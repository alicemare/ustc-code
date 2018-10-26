#include "widget.h"
#include "ui_widget.h"

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    connect(ui->lineEdit,SIGNAL(textEdited(QString)),ui->label,SLOT(setText(QString)));
}

Widget::~Widget()
{
    delete ui;
}
