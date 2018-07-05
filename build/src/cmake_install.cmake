# Install script for directory: /home/dongshin/code-repository/xti300_driver/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dongshin/Shares")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/dongshin/code-repository/xti300_driver/build/src/libxstypes.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/dongshin/code-repository/xti300_driver/build/src/libxcommunication.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/dongshin/code-repository/xti300_driver/build/src/libxti300.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xti300" TYPE FILE FILES
    "/home/dongshin/code-repository/xti300_driver/src/../include/xti_io.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xticommon.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/deviceclass.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/conio.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/ImuData.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xsens" TYPE FILE FILES
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/pstdint.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsanalogindata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsatomicint.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsbaud.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsbaudcode.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsbaudrate.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsbusid.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsbytearray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xscalibrateddata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xscontrolline.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xscopy.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdataformat.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdataidentifier.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdataidentifiervalue.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdatapacket.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdebugcounters.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdeviceid.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdeviceidarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdeviceidlist.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsdid.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xseuler.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsexception.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsfile.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsfilepos.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsgpspvtdata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsinforequest.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsint64array.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsintarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsintlist.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xslibraryloader.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmalloc.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmath.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmatrix.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmatrix3x3.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmessage.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmessagearray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmessagelist.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsmutex.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsoutputconfiguration.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsoutputconfigurationarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsoutputconfigurationlist.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsoutputmode.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsoutputsettings.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsplatform.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsportinfo.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsportinfoarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsportinfolist.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xspressure.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsquaternion.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrange.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrawgnsspvtdata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrawgnsssatinfo.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrawgpsdop.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrawgpssol.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrawgpssvinfo.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrawgpstimeutc.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsresultvalue.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsrssi.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsscrdata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssdidata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssimpleversion.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssnapshot.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssocket.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsstring.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsstringarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsstringstreaming.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncfunction.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncline.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncpolarity.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncrole.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncsetting.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncsettingarray.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xssyncsettinglist.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsthread.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xstime.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xstimestamp.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xstriggerindicationdata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xstypedefs.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xstypesconfig.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xstypesdynlib.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsushortvector.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsutctime.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsvector.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsvector3.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsversion.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xsens/xsxbusmessageid.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xcommunication" TYPE FILE FILES
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/enumerateusbdevices.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/int_xsdatapacket.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/iointerface.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/iointerfacefile.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/iprotocolhandler.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/legacydatapacket.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/messagelocation.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/mtwsdidata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/packetfixeddata.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/packetstamper.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/protocolhandler.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/serialinterface.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/streaminterface.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/synclinegmt.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/synclinemk4.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/usbinterface.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/xcommunicationconfig.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/xslibusb.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/xsudev.h"
    "/home/dongshin/code-repository/xti300_driver/src/../include/xcommunication/xswinusb.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xstypes" TYPE FILE FILES
    "/home/dongshin/code-repository/xti300_driver/src/../src/xstypes/datapacket_p.h"
    "/home/dongshin/code-repository/xti300_driver/src/../src/xstypes/resource.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/xti300/cmake" TYPE FILE FILES
    "/home/dongshin/code-repository/xti300_driver/build/src/xti300Config.cmake"
    "/home/dongshin/code-repository/xti300_driver/build/src/xti300ConfigVersion.cmake"
    )
endif()

