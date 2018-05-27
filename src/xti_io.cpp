#include "xti_io.h"

xti_io::xti_io()
{
}

xti_io::~xti_io()
{
}

void xti_io::exitProgram()
{
	exit(1);
}

void xti_io::capture_loop()
{
	XsByteArray data;
	XsMessageArray msgs;

	while (1)
	{
		m_device.readDataToBuffer(data);
		m_device.processBufferedData(data, msgs);

		for (XsMessageArray::iterator it = msgs.begin(); it != msgs.end(); ++it)
		{
			// Retrieve a packet
			XsDataPacket packet;
			ImuData imd;
			std::chrono::high_resolution_clock::time_point p = std::chrono::high_resolution_clock::now();
			std::chrono::microseconds ms = std::chrono::duration_cast<std::chrono::microseconds>(p.time_since_epoch());
			imd.m_timestamp = ms.count();
			packet.setMessage((*it));
			packet.setDeviceId(m_mtPort.deviceId());

			if (packet.containsCalibratedGyroscopeData())
			{
				XsVector gyroscope = packet.calibratedGyroscopeData();
				imd.m_rotation_x = gyroscope.at(0);
				imd.m_rotation_y = gyroscope.at(1);
				imd.m_rotation_z = gyroscope.at(2);
			}

			// Get the acceleration data
			if (packet.containsCalibratedAcceleration())
			{
				XsVector acceleration = packet.calibratedAcceleration();

				imd.m_acceleration_x = acceleration.at(0);
				imd.m_acceleration_y = acceleration.at(1);
				imd.m_acceleration_z = acceleration.at(2);
			}

			m_data.push_back(imd);
			if (m_data.size() > 50000)
			{
				m_data.pop_front();
			}
		}
		msgs.clear();
		XsTime::msleep(0);
	}
}

void xti_io::startCapture()
{
	m_capturethread = std::thread(&xti_io::capture_loop, this);
}

bool xti_io::init(const char *dev)
{
	try
	{
		string portName;
		portName = dev;
		int baudRate = 115200;
		m_mtPort.setPortName(portName);
		m_mtPort.setBaudrate(XsBaud::numericToRate(baudRate));

		if (!m_device.openPort(m_mtPort))
		{
			throw std::runtime_error("Could not open port. Aborting.");
			return false;
		}
		if (!m_device.gotoConfig()) // Put the device into configuration mode before configuring the device
		{
			throw std::runtime_error("Could not put device into configuration mode. Aborting.");
			return false;
		}
		m_mtPort.setDeviceId(m_device.getDeviceId());
		if (!m_mtPort.deviceId().isMt9c() && !m_mtPort.deviceId().isLegacyMtig() && !m_mtPort.deviceId().isMtMk4() && !m_mtPort.deviceId().isFmt_X000())
		{
			throw std::runtime_error("No MTi / MTx / MTmk4 device found. Aborting.");
			return false;
		}
		try
		{
			// Print information about detected MTi / MTx / MTmk4 device
			cout << "Device: " << m_device.getProductCode().toStdString() << " opened." << endl;
			if (m_mtPort.deviceId().isMtMk4() || m_mtPort.deviceId().isFmt_X000())
			{
				XsOutputConfiguration acc(XDI_Acceleration, 1000);
				XsOutputConfiguration rot(XDI_RateOfTurn, 1000);
				//XsOutputConfiguration rot(XDI_RawGyr, 1000);
				XsOutputConfigurationArray configArray;
				configArray.push_back(acc);
				configArray.push_back(rot);
				if (!m_device.setOutputConfiguration(configArray))
				{

					throw std::runtime_error("Could not configure MTmk4 device. Aborting.");
					return false;
				}
			}
			else
			{
				throw std::runtime_error("Unknown device while configuring. Aborting.");
				return false;
			}

			// Put the device in measurement mode
			if (!m_device.gotoMeasurement())
			{
				throw std::runtime_error("Could not put device into measurement mode. Aborting.");
				return false;
			}
		}
		catch (std::runtime_error const &error)
		{
			cout << error.what() << endl;
			return false;
		}
		catch (...)
		{
			cout << "An unknown fatal error has occured. Aborting." << endl;
			return false;
		}
	}
	catch (std::runtime_error const &error)
	{
		cout << error.what() << endl;
		return false;
	}
	catch (...)
	{
		cout << "An unknown fatal error has occured. Aborting." << endl;
		return false;
	}
	return true;
}
