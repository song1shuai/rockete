#include "RocketHelper.h"

#include <Rocket/Core.h>
#include "RocketSystem.h"

RMLDocument * RocketHelper::loadDocument(const char * file_path)
{
    return RocketSystem::getInstance().getContext()->LoadDocument( file_path );
}

void RocketHelper::unloadDocument(RMLDocument * rml_document)
{
    RocketSystem::getInstance().getContext()->UnloadDocument(rml_document);
    Rocket::Core::Factory::ClearStyleSheetCache();
}

void RocketHelper::highlightElement(Element * element)
{
    if (element)
    {
        for (int i = 0; i < element->GetNumBoxes(); i++)
        {
            const Rocket::Core::Box element_box = element->GetBox(i);

            // Content area:
            GraphicSystem::drawBox(element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::CONTENT), element_box.GetSize(), Color4b(158, 214, 237, 128));

            // Padding area:
            GraphicSystem::drawBox(element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::PADDING), element_box.GetSize(Rocket::Core::Box::PADDING), element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::CONTENT), element_box.GetSize(), Color4b(135, 122, 214, 128));

            // Border area:
            GraphicSystem::drawBox(element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::BORDER), element_box.GetSize(Rocket::Core::Box::BORDER), element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::PADDING), element_box.GetSize(Rocket::Core::Box::PADDING), Color4b(133, 133, 133, 128));

            // Border area:
            GraphicSystem::drawBox(element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::MARGIN), element_box.GetSize(Rocket::Core::Box::MARGIN), element->GetAbsoluteOffset(Rocket::Core::Box::BORDER) + element_box.GetPosition(Rocket::Core::Box::BORDER), element_box.GetSize(Rocket::Core::Box::BORDER), Color4b(240, 255, 131, 128));
        }
    }
}
