#include <QtWidgets/QApplication>
#include "hellowiget.h"

int main(int argc, char* argv[])
{
    QApplication a(argc, argv);
    HelloWidget hw;
    hw.show();

    return a.exec();
}

