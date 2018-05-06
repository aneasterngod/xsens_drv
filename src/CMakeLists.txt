# Dongshin Kim, 2018-05-01 18:00
include_directories (
    ${xti300_driver_SOURCE_DIR}/src
    ${xti300_driver_SOURCE_DIR}/include
    /home/dongshin/Shares/include
)

link_directories (
    ${xti300_driver_BINARY_DIR}/src
    /home/dongshin/Shares/lib64
)

add_library(xcommunication
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/enumerateusbdevices.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/int_xsdatapacket.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/iointerface.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/iointerfacefile.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/legacydatapacket.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/mtwsdidata.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/packetfixeddata.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/packetstamper.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/protocolhandler.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/serialinterface.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/synclinegmt.c
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/synclinemk4.c
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/usbinterface.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/xslibusb.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/xsudev.cpp
/home/dongshin/code-workspace/xti300_driver/src/xcommunication/xswinusb.cpp
)

add_library(xti300
    xti_io.cpp
    deviceclass.cpp    
    conio.c
    ImuData.cpp    
)

add_executable (xti300_drv 
    xti300.cpp    
    )

target_link_libraries(xti300_drv
    xstypes 
    xcommunication
    xti300
)
target_link_libraries(xti300
    xcommunication
)

install (TARGETS xti300 DESTINATION lib)
install (FILES 
    ../include/xti_io.h     
    DESTINATION include)