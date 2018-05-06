#include "xticommon.h"



class xti_io
{
  public:
    xti_io();
    ~xti_io();
  private:
    void capture_loop();
  public:
    void startCapture();
    void init(char* dev);
    void exitProgram();
  private:
   	DeviceClass m_device;
    XsPortInfo m_mtPort;    
    std::thread m_filethread;
    std::thread m_capturethread;
  public:
    std::deque<ImuData> m_data;
};