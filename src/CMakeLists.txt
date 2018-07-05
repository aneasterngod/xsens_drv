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

install (TARGETS xstypes EXPORT xstypes-targets ARCHIVE DESTINATION lib)
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
	../include/xsens/pstdint.h
	../include/xsens/xsanalogindata.h
	../include/xsens/xsarray.h
	../include/xsens/xsatomicint.h
	../include/xsens/xsbaud.h
	../include/xsens/xsbaudcode.h
	../include/xsens/xsbaudrate.h
	../include/xsens/xsbusid.h
	../include/xsens/xsbytearray.h
	../include/xsens/xscalibrateddata.h
	../include/xsens/xscontrolline.h
	../include/xsens/xscopy.h
	../include/xsens/xsdataformat.h
	../include/xsens/xsdataidentifier.h
	../include/xsens/xsdataidentifiervalue.h
	../include/xsens/xsdatapacket.h
	../include/xsens/xsdebugcounters.h
	../include/xsens/xsdeviceid.h
	../include/xsens/xsdeviceidarray.h
	../include/xsens/xsdeviceidlist.h
	../include/xsens/xsdid.h
	../include/xsens/xseuler.h
	../include/xsens/xsexception.h
	../include/xsens/xsfile.h
	../include/xsens/xsfilepos.h
	../include/xsens/xsgpspvtdata.h
	../include/xsens/xsinforequest.h
	../include/xsens/xsint64array.h
	../include/xsens/xsintarray.h
	../include/xsens/xsintlist.h
	../include/xsens/xslibraryloader.h
	../include/xsens/xsmalloc.h
	../include/xsens/xsmath.h
	../include/xsens/xsmatrix.h
	../include/xsens/xsmatrix3x3.h
	../include/xsens/xsmessage.h
	../include/xsens/xsmessagearray.h
	../include/xsens/xsmessagelist.h
	../include/xsens/xsmutex.h
	../include/xsens/xsoutputconfiguration.h
	../include/xsens/xsoutputconfigurationarray.h
	../include/xsens/xsoutputconfigurationlist.h
	../include/xsens/xsoutputmode.h
	../include/xsens/xsoutputsettings.h
	../include/xsens/xsplatform.h
	../include/xsens/xsportinfo.h
	../include/xsens/xsportinfoarray.h
	../include/xsens/xsportinfolist.h
	../include/xsens/xspressure.h
	../include/xsens/xsquaternion.h
	../include/xsens/xsrange.h
	../include/xsens/xsrawgnsspvtdata.h
	../include/xsens/xsrawgnsssatinfo.h
	../include/xsens/xsrawgpsdop.h
	../include/xsens/xsrawgpssol.h
	../include/xsens/xsrawgpssvinfo.h
	../include/xsens/xsrawgpstimeutc.h
	../include/xsens/xsresultvalue.h
	../include/xsens/xsrssi.h
	../include/xsens/xsscrdata.h
	../include/xsens/xssdidata.h
	../include/xsens/xssimpleversion.h
	../include/xsens/xssnapshot.h
	../include/xsens/xssocket.h
	../include/xsens/xsstring.h
	../include/xsens/xsstringarray.h
	../include/xsens/xsstringstreaming.h
	../include/xsens/xssyncfunction.h
	../include/xsens/xssyncline.h
	../include/xsens/xssyncpolarity.h
	../include/xsens/xssyncrole.h
	../include/xsens/xssyncsetting.h
	../include/xsens/xssyncsettingarray.h
	../include/xsens/xssyncsettinglist.h
	../include/xsens/xsthread.h
	../include/xsens/xstime.h
	../include/xsens/xstimestamp.h
	../include/xsens/xstriggerindicationdata.h
	../include/xsens/xstypedefs.h
	../include/xsens/xstypesconfig.h
	../include/xsens/xstypesdynlib.h
	../include/xsens/xsushortvector.h
	../include/xsens/xsutctime.h
	../include/xsens/xsvector.h
	../include/xsens/xsvector3.h
	../include/xsens/xsversion.h
	../include/xsens/xsxbusmessageid.h
	DESTINATION include/xsens)

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
	
install (FILES 
	../src/xstypes/datapacket_p.h
	../src/xstypes/resource.h
	DESTINATION include/xstypes)

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
