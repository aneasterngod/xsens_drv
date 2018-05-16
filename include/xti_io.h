#ifndef XTI300_IO
#define XTI300_IO
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
    bool init(const char* dev);
    void exitProgram();
  private:
   	DeviceClass m_device;
    XsPortInfo m_mtPort;    
    std::thread m_filethread;
    std::thread m_capturethread;
  public:
    std::deque<ImuData> m_data;
};

#endif
