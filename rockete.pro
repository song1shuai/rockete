TEMPLATE = app
TARGET = rockete
DESTDIR = ./debug
QT += gui core opengl
CONFIG += debug_and_release console qtestlib
DEFINES += QT_LARGEFILE_SUPPORT QT_OPENGL_LIB
RESOURCES = rockete.qrc
SOURCES += \
 ./src/Action.cpp \
 ./src/ActionGroup.cpp \
 ./src/ActionManager.cpp \
 ./src/ActionInsertElement.cpp \
 ./src/ActionSetAttribute.cpp \
 ./src/ActionSetInlineProperty.cpp \
 ./src/ActionSetProperty.cpp \
 ./src/AttributeTreeModel.cpp \
 ./src/CodeEditor.cpp \
 ./src/CSSHighlighter.cpp \
 ./src/EditionHelper.cpp \
 ./src/EditionHelperColor.cpp \
 ./src/GraphicSystem.cpp \
 ./src/main.cpp \
 ./src/OpenedDocument.cpp \
 ./src/OpenedFile.cpp \
 ./src/OpenedStyleSheet.cpp \
 ./src/PropertyTreeModel.cpp \
 ./src/RenderingView.cpp \
 ./src/Rockete.cpp \
 ./src/RocketHelper.cpp \
 ./src/RocketRenderInterface.cpp \
 ./src/RocketSystem.cpp \
 ./src/Settings.cpp \
 ./src/StyleSheet.cpp \
 ./src/Tool.cpp \
 ./src/ToolDiv.cpp \
 ./src/ToolImage.cpp \
 ./src/ToolManager.cpp \
 ./src/ToolSelecter.cpp \
 ./src/XMLHighlighter.cpp
HEADERS += \
 ./src/Action.h \
 ./src/ActionGroup.h \
 ./src/ActionInsertElement.h \
 ./src/ActionManager.h \
 ./src/ActionSetAttribute.h \
 ./src/ActionSetInlineProperty.h \
 ./src/ActionSetProperty.h \
 ./src/AttributeTreeModel.h \
 ./src/CodeEditor.h \
 ./src/CSSHighlighter.h \
 ./src/EditionHelper.h \
 ./src/EditionHelperColor.h \
 ./src/GraphicSystem.h \
 ./src/OpenedDocument.h \
 ./src/OpenedFile.h \
 ./src/OpenedStyleSheet.h \
 ./src/OpenGL.h \
 ./src/PropertyTreeModel.h \
 ./src/RenderingView.h \
 ./src/Rockete.h \
 ./src/RocketHelper.h \
 ./src/RocketRenderInterface.h \
 ./src/RocketSystem.h \
 ./src/Settings.h \
 ./src/StyleSheet.h \
 ./src/Tool.h \
 ./src/ToolManager.h \
 ./src/ToolDiv.h \
 ./src/ToolImage.h \
 ./src/ToolSelecter.h \
 ./src/XMLHighlighter.h
FORMS += ./rockete.ui \
    choose_color.ui
INCLUDEPATH = ./src
win32 {
    INCLUDEPATH += $(LIBROCKET)/Include
    LIBS += \
        -L$(LIBROCKET)/bin \
        -lkernel32 \
        -luser32 \
        -lshell32 \
        -luuid \
        -lole32 \
        -ladvapi32 \
        -lws2_32 \
        -lgdi32 \
        -lcomdlg32 \
        -loleaut32 \
        -limm32 \
        -lwinmm \
        -lwinspool \
        -lopengl32 \
        -lglu32

    CONFIG(debug, debug|release) {
        LIBS += -lRocketCore_d -lRocketControls_d -lRocketFreeType_d
    }
    
    CONFIG(release, debug|release) {
        LIBS += -lRocketCore -lRocketControls
    }
}
unix {
    LIBS += -lRocketCore -lRocketControls
}

include(./src/modeltest/modeltest.pri)