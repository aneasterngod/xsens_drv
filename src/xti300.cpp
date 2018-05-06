#include <iostream>
#include "xti_io.h"

xti_io* object_which_will_handle_signal;

void xti_io_memberFn_wrapper(int sig)
{
	cout << sig << endl;
  	object_which_will_handle_signal->exitProgram();
}


int main(int argc, char** argv){
	if(argc != 2){
		cout << "USAGE: xti300_drv /dev/ttyUSBx" << endl;
		return 0;
	}
	xti_io xti;
	object_which_will_handle_signal = &xti;
	signal(SIGINT, xti_io_memberFn_wrapper);  

	xti.init(argv[1]);

	// start capture thread
	xti.startCapture();


	while(1){
		if(xti.m_data.size() != 0){
			cout << xti.m_data.front().m_timestamp << endl;
			xti.m_data.pop_front();
		}
		usleep(10);
	}



	return 0;
	
}