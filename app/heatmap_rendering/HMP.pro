TEMPLATE = app
TARGET = HMP

CONFIG += c++11 qt plugin
QT += core gui widgets charts
CONFIG += qmake_qt_autogen

# 设置构建类型
CONFIG(debug, debug|release) {
    DEFINES += DEBUG
     message("Build type: Debug")
} else {
     message("Build type: Release")
}


DEFINES += DATA_PATH_PREFIX=\\\"/data/vis-on-earth-qt-osg-test/data/\\\"
DEFINES += VIS4EARTH_SHADER_PREFIX=\\\"/data/vis-on-earth-bug-fix-2/vis4earth/shader/\\\"

# OSG 路径
OSG_RELEASE =  /data/SDK/osg3.4
OSG_DEBUG = /data/SDK/OpenSceneGraph-Debug

# 根据构建类型设置 OSG 的库和包含路径
CONFIG(debug, debug|release) {
    INCLUDEPATH += $$OSG_DEBUG/include
    LIBS += -L$$OSG_DEBUG/lib -losgd -losgViewerd -losgDBd -losgGAd -losgTextd -lOpenThreadsd -losgUtild -losgParticled
} else {
    INCLUDEPATH += $$OSG_RELEASE/include
    LIBS += -L$$OSG_RELEASE/lib -losg -losgViewer -losgDB -losgGA -losgText -lOpenThreads -losgUtil -losgParticle
}

# 添加头文件、源文件和资源文件
HEADERS += $$files($$PWD/../../vis4earth/*.h, true)
SOURCES += $$files($$PWD/../../vis4earth/*.cpp, true)
FORMS += $$files($$PWD/../../vis4earth/*.ui, true)
INCLUDEPATH += $$PWD/../../

SOURCES += $$files($$PWD/*.cpp, true)

message("HEADERS" $$HEADERS)
message("SOURCES" $$SOURCES)
message("INCLUDEPATH" $$INCLUDEPATH)
message("LIBS" $$LIBS)

# 可执行文件的输出目录
DESTDIR = $$PWD/bin

