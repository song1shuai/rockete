#ifndef TOOLIMAGE_H
#define TOOLIMAGE_H

#include "Tool.h"
#include <QObject>

class ToolImage : public Tool
{
    Q_OBJECT

public:
    ToolImage();
    virtual void onElementClicked(Element *element);
    virtual void onRender();
    virtual void onMousePress(const Qt::MouseButton button, const Vector2f &position);
    virtual void onMouseRelease(const Qt::MouseButton button, const Vector2f &position);
    virtual void onMouseMove(const Vector2f &position);

private slots:

private:
    void processElement(Element *element);
};


#endif