#### project metadata ####

AUTHOR_ID   = Zumi
PLUGIN_NAME = TestPlugin

##### source files ####

SOURCES += \
    plugin.cpp

HEADERS += \
    plugin.h

DISTFILES += \
    Plugin.json

#### qmake stuff ####

# core library
QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

# the-libs
QT       += thelib

# the-libs build tools
include(/usr/share/the-libs/pri/gentranslations.pri)

# setup build
TEMPLATE = lib
CONFIG += plugin c++11

# theDesk stuff
INCLUDEPATH += /usr/include/libthedesk /usr/include/thedesk/
LIBS += -lthedesk

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# apply metadata defines
DEFINES += PLUGIN_NAME=$$PLUGIN_NAME
TARGET = $$AUTHOR_ID$$PLUGIN_NAME

# install path
target.path = $$[QT_INSTALL_LIBS]/thedesk/plugins
INSTALLS += target
