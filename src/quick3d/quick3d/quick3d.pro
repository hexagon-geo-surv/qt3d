TARGET   = Qt3DQuick
MODULE   = 3dquick

QT      += core-private gui-private qml qml-private quick quick-private 3dcore 3dcore-private
CONFIG  += c++17 qmltypes qmltypes_install

gcov {
    QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
    QMAKE_LFLAGS += -fprofile-arcs -ftest-coverage
}

HEADERS += \
    qt3dquick_global.h \
    qt3dquick_global_p.h \
    qt3dquickvaluetypes_p.h \
    qt3dquicknodefactory_p.h \
    qqmlaspectengine.h \
    qqmlaspectengine_p.h \
    qquaternionanimation_p.h

SOURCES += \
    qt3dquick_global.cpp \
    qt3dquickvaluetypes.cpp \
    qt3dquicknodefactory.cpp \
    qqmlaspectengine.cpp \
    qquaternionanimation.cpp

include(./items/items.pri)

QML_IMPORT_NAME = Qt3DQuick
QML_IMPORT_MAJOR_VERSION = 1

load(qt_module)
