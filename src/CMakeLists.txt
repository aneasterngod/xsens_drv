# Dongshin Kim, 2018-05-01 18:00
# you have to set common_include and common_lib folder to specify any library needed in xti300_driver
# maybe you don't need to set this thing up


set(INCLUDE_INSTALL_DIR include/xti300 )
set(LIB_INSTALL_DIR lib/ )


include_directories (
    ${xti300_driver_SOURCE_DIR}/src
	${xti300_driver_SOURCE_DIR}/include
	${xti300_driver_SOURCE_DIR}/include/xcommunication
	${xti300_driver_SOURCE_DIR}/include/xsens
)

link_directories (
    ${xti300_driver_BINARY_DIR}/src
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

add_library(xstypes
	xstypes/datapacket_p.cpp
	xstypes/xsarray.c
	xstypes/xsbaud.c
	xstypes/xsbytearray.c
	xstypes/xscalibrateddata.c
	xstypes/xsdatapacket.cpp
	xstypes/xsdeviceid.c
	xstypes/xsdeviceidarray.c
	xstypes/xseuler.c
	xstypes/xsfile.c
	xstypes/xsgpspvtdata.c
	xstypes/xsint64array.c
	xstypes/xsintarray.c
	xstypes/xslibraryloader.c
	xstypes/xsmalloc.c
	xstypes/xsmath.c
	xstypes/xsmatrix.c
	xstypes/xsmatrix3x3.c
	xstypes/xsmessage.c
	xstypes/xsmessagearray.c
	xstypes/xsoutputconfiguration.c
	xstypes/xsoutputconfigurationarray.c
	xstypes/xsportinfo.c
	xstypes/xsportinfoarray.c
	xstypes/xsquaternion.c
	xstypes/xsrange.c
	xstypes/xsresultvalue.c
	xstypes/xsrssi.c
	xstypes/xssdidata.c
	xstypes/xssimpleversion.c
	xstypes/xssnapshot.c
	xstypes/xssocket.c
	xstypes/xsstring.c
	xstypes/xsstringarray.c
	xstypes/xssyncsetting.c
	xstypes/xssyncsettingarray.c
	xstypes/xsthread.c
	xstypes/xstime.c
	xstypes/xstimestamp.c
	xstypes/xstriggerindicationdata.c
	xstypes/xstypedefs.c
	xstypes/xstypesdynlib.c
	xstypes/xsutctime.c
	xstypes/xsvector.c
	xstypes/xsvector3.c
	xstypes/xsversion.c
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

target_link_libraries(xti300
    xcommunication
    xstypes
)

target_link_libraries(xti300_drv
    xti300
)


install (TARGETS xcommunication EXPORT xcommunication-targets ARCHIVE DESTINATION lib)
install (TARGETS xti300 EXPORT xti300-targets ARCHIVE DESTINATION lib)


install (FILES 
    ../include/xti_io.h  
    ../include/xticommon.h   
    ../include/deviceclass.h
    ../include/conio.h   
    ../include/ImuData.h
    DESTINATION include/xti300)
	
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
	
include(CMakePackageConfigHelpers)
configure_package_config_file(xti300Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/xti300Config.cmake
  INSTALL_DESTINATION ${LIB_INSTALL_DIR}/xti300/cmake
  PATH_VARS INCLUDE_INSTALL_DIR LIB_INSTALL_DIR)
write_basic_package_version_file(
  ${CMAKE_CURRENT_BINARY_DIR}/xti300ConfigVersion.cmake
  VERSION 1.0.0
  COMPATIBILITY SameMajorVersion )
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/xti300Config.cmake
              ${CMAKE_CURRENT_BINARY_DIR}/xti300ConfigVersion.cmake
        DESTINATION ${LIB_INSTALL_DIR}/xti300/cmake )
