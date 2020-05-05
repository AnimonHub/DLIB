QT += core
QT -= gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = testDLib
CONFIG += console c++11
CONFIG -= app_bundle

TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS
DEFINES += DLIB_PNG_SUPPORT

CONFIG += link_pkgconfig
PKGCONFIG += x11

QMAKE_LIBDIR += -l"/usr/lib/libdlib.so"
#INCLUDEPATH += $(LIBRARY_SHARE)/libpng
#LIBS += -L$(LIBRARY_SHARE)/libpng -lpng
LIBS += -L"/home/animon/Downloads/dlib/dlib-19.13_no_blas_no_cuda/build"
LIBS += -ldlib

SOURCES += \
        main.cpp
