# Dongshin Kim, 2018-05-01 18:00
# you have to set common_include and common_lib folder to specify any library needed in xti300_driver
# maybe you don't need to set this thing up
set(common_include )
set(common_lib )
include_directories (
    ${xti300_driver_SOURCE_DIR}/src
    ${xti300_driver_SOURCE_DIR}/include
    ${common_include}
)

link_directories (
    ${xti300_driver_BINARY_DIR}/src
    ${common_lib}
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
    xti300
)
target_link_libraries(xti300
    xcommunication
    xstypes 
)

install (TARGETS xcommunication EXPORT xcommunication-targets DESTINATION lib)
install (TARGETS xti300 EXPORT xti300-targets DESTINATION lib)
install (FILES 
    ../include/xti_io.h  
    ../include/xticommon.h   
    ../include/deviceclass.h
    ../include/conio.h   
    ../include/ImuData.h
    DESTINATION include)
install (FILES 
../include/xcommunication/enumerateusbdevices.h
../include/xcommunication/int_xsdatapacket.h
../include/xcommunication/iointerface.h
../include/xcommunication/iointerfacefile.h
../include/xcommunication/iprotocolhandler.h
../include/xcommunication/legacydatapacket.h
../include/xcommunication/messagelocation.h
../include/xcommunication/mtwsdidata.h
../include/xcommunication/packetfixeddata.h
../include/xcommunication/packetstamper.h
../include/xcommunication/protocolhandler.h
../include/xcommunication/rx_tx_log.h
../include/xcommunication/serialinterface.h
../include/xcommunication/streaminterface.h
../include/xcommunication/synclinegmt.h
../include/xcommunication/synclinemk4.h
../include/xcommunication/usbinterface.h
../include/xcommunication/xcommunicationconfig.h
../include/xcommunication/xslibusb.h
../include/xcommunication/xsudev.h
../include/xcommunication/xswinusb.h
    DESTINATION include/xcommunication)
install(EXPORT xti300-targets DESTINATION lib/xti300)
install(EXPORT xcommunication-targets DESTINATION lib/xti300)
install(FILES xti300Config.cmake DESTINATION lib/xti300)
