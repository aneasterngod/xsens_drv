#include <iostream>
#include <iomanip>
#include <stdexcept>
#include <string>

#include <xsens/xsportinfoarray.h>
#include <xsens/xsdatapacket.h>
#include <xsens/xstime.h>
#include <xcommunication/legacydatapacket.h>
#include <xcommunication/int_xsdatapacket.h>
#include <xcommunication/enumerateusbdevices.h>


#include "deviceclass.h"
#include "xticommon.h"
#include "conio.h"


class xti_io
{
  public:
    xti_io();
    ~xti_io();

  public:
  	DeviceClass m_device;
  
};