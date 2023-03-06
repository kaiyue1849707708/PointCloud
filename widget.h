#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include "DataStructure.h"
QT_BEGIN_NAMESPACE
namespace Ui { class Widget; }
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();
    bool IsShowWireframe;
    void ReconstructIn3D(std::vector<Vector3D*> &dots, std::vector<std::tuple<int, int, int>*> &mesh);

    void ClearMemory(std::vector<Vector3D*>&, std::vector<std::tuple<int, int, int>*>&);

    void ReaderJPG();
public slots:
    void slotOpenFile1();
     void slotOpenFile2();
     void Search();
     void Draw();

private:
    Ui::Widget *ui;
};
#endif // WIDGET_H
