#include "widget.h"
#include "ui_widget.h"
#include <QMessageBox>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    //put your code after setupUI
    connect(ui->pushButton,SIGNAL(clicked()),this,SLOT(FoodIsComing()));
}

Widget::~Widget()
{
    delete ui;
}

//槽函数定义代码，与普通成员函数类似
void Widget::FoodIsComing(){
    QMessageBox::information(this,tr("arrive!"),tr("thank you for your out eating!"));
}
