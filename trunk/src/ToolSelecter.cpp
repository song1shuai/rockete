#include "ToolSelecter.h"

#include "Rockete.h"
#include <QLabel>
#include <QGridLayout>

ToolSelecter::ToolSelecter()
: Tool()
{
    QLayout *layout;

    name = "Selecter";
    imageName = "images/tool_select.png";
    layout = new QGridLayout();
    layout->addWidget(new QLabel("Selecter"));
    widget = new QWidget();
    widget->setLayout(layout);
}

void ToolSelecter::onElementClicked(Element *element)
{
    Rockete::getInstance().selectElement(element);
}