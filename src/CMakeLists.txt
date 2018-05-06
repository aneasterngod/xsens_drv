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
xcommunication/enumerateusbdevices.cpp
xcommunication/int_xsdatapacket.cpp
xcommunication/iointerface.cpp
xcommunication/iointerfacefile.cpp
xcommunication/legacydatapacket.cpp
xcommunication/mtwsdidata.cpp
xcommunication/packetfixeddata.cpp
xcommunication/packetstamper.cpp
xcommunication/protocolhandler.cpp
xcommunication/serialinterface.cpp
xcommunication/synclinegmt.c
xcommunication/synclinemk4.c
xcommunication/usbinterface.cpp
xcommunication/xslibusb.cpp
xcommunication/xsudev.cpp
xcommunication/xswinusb.cpp
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
    ../include/xticommon.h   
    ../include/deviceclass.h
    ../include/conio.h   
    ../include/ImuData.h
    DESTINATION include)
install (FILES 
./include/xcommunication/enumerateusbdevices.h
./include/xcommunication/int_xsdatapacket.h
./include/xcommunication/iointerface.h
./include/xcommunication/iointerfacefile.h
./include/xcommunication/iprotocolhandler.h
./include/xcommunication/legacydatapacket.h
./include/xcommunication/messagelocation.h
./include/xcommunication/mtwsdidata.h
./include/xcommunication/packetfixeddata.h
./include/xcommunication/packetstamper.h
./include/xcommunication/protocolhandler.h
./include/xcommunication/rx_tx_log.h
./include/xcommunication/serialinterface.h
./include/xcommunication/streaminterface.h
./include/xcommunication/synclinegmt.h
./include/xcommunication/synclinemk4.h
./include/xcommunication/usbinterface.h
./include/xcommunication/xcommunicationconfig.h
./include/xcommunication/xslibusb.h
./include/xcommunication/xsudev.h
./include/xcommunication/xswinusb.h
    DESTINATION include/xcommunication)