QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

#CONFIG(release, debug|release) {
#    #This is a release build
#    DEFINES += QT_NO_DEBUG_OUTPUT
#} else {
#    #This is a debug build
#}

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    adbfunctions.cpp \
    connectdialog.cpp \
    directorycontentmodel.cpp \
    directoryitem.cpp \
    newfolderdialog.cpp \
    wirelessdeviceinfo.cpp \
    deviceinfo.cpp \
    main.cpp \
    mainwindow.cpp \
    wirelessconnectdialog.cpp

HEADERS += \
    adbfunctions.h \
    connectdialog.h \
    directorycontentmodel.h \
    directoryitem.h \
    newfolderdialog.h \
    wirelessdeviceinfo.h \
    deviceinfo.h \
    mainwindow.h \
    wirelessconnectdialog.h

FORMS += \
    connectdialog.ui \
    mainwindow.ui \
    newfolderdialog.ui \
    wirelessconnectdialog.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
