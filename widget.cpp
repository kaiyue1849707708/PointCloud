
#include "widget.h"
#include "ui_widget.h"
#include <QVTKOpenGLNativeWidget.h>
#include<QFileDialog>
#include <QSurfaceFormat>
#include <vtkSphereSource.h>
#include <vtkTriangle.h>
#include <vtkCellArray.h>
#include <vtkPointData.h>
#include <vtkPolyData.h>
#include <vtkPolyDataMapper.h>
#include <vtkActor.h>
#include <vtkProperty.h>
#include <vtkRenderWindow.h>
#include <vtkRenderer.h>
#include <vtkRenderWindowInteractor.h>
#include <vtkInteractorStyleTrackballCamera.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <vtkNamedColors.h>
#include <vtkSmartPointer.h>
#include "vtkAutoInit.h"
#include <iostream>
#include <string>
#include <vector>
#include "DotCloudReader.h"
#include<vtkConeSource.h>
#include <vtkPNGReader.h>//JPG读取类
#include <vtkImageViewer.h>//显示2D图像类
#include <vtkRenderWindowInteractor.h>//交互器类
VTK_MODULE_INIT(vtkRenderingOpenGL2);
VTK_MODULE_INIT(vtkInteractionStyle);
VTK_MODULE_INIT(vtkRenderingVolumeOpenGL2);
VTK_MODULE_INIT(vtkRenderingFreeType);




using namespace std;

Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    QSurfaceFormat::setDefaultFormat(QVTKOpenGLNativeWidget::defaultFormat());
    connect(ui->pushButton1, SIGNAL(clicked()), this, SLOT(slotOpenFile1()));
    connect(ui->pushButton2, SIGNAL(clicked()), this, SLOT(slotOpenFile2()));
    connect(ui->pushButton3, SIGNAL(clicked()), this, SLOT(Search()));
    connect(ui->pushButton4, SIGNAL(clicked()), this, SLOT(Draw()));





}
void Widget::slotOpenFile1() {
    QString s = QFileDialog::getOpenFileName( this , "打开文件 " , "E:/Picture " , "Files(*.pcd) " );
    qDebug() << s ;                            //得到pcd文件所在路径
    qDebug() << "开始读取点云数据 ";
    DotCloudReader cloudData;
    cloudData.importPcd(s);

    qDebug() << "读取点云数据结束 ";

}
void Widget::slotOpenFile2()
{
    QString s = QFileDialog::getOpenFileName(this, "打开文件", "E:/Picture", "Files(*.pcd)");
    qDebug() << s ;           //得到pcd文件所在路径
    qDebug() << "开始读取CAD数据 ";
    DotCloudReader cloudData1;
    cloudData1.importCad(s);

    qDebug() << "读取CAD数据结束 ";
}

void Widget::Search()
{
    DotCloudReader cloudReader;
    cloudReader.Search();
    qDebug() << "数据比较结束 ";
}
void Widget::Draw(){

    qDebug() << "开始绘制 " ;
    //ReaderJPG();
    ReconstructIn3D(dots,mesh);

    qDebug() << "图像绘制结束 " ;
}
void Widget::ReconstructIn3D(std::vector<Vector3D*> &dots, std::vector<std::tuple<int, int, int>*> &mesh)
{
    vtkNew<vtkPoints> points;
    vtkNew<vtkUnsignedCharArray> colors;
    vtkNew<vtkCellArray> cells;

    colors->SetNumberOfComponents(3);
    colors->SetName("Colors");

     std::vector< Vector3D*>::iterator itDots;
    for (itDots = dots.begin(); itDots != dots.end(); itDots++)
    {
        Vector3D* dot = *itDots;
        points->InsertNextPoint(dot->X, dot->Y, dot->Z);
        colors->InsertNextTuple3(dot->R, dot->G, dot->B);
    }


    std::vector< std::tuple<int, int, int>*>::iterator itMesh;
    for (itMesh = mesh.begin(); itMesh != mesh.end(); itMesh++)
    {
        vtkNew<vtkTriangle> vtkTriangle;
        //vtkTriangle = vtkTriangle::New();
        vtkTriangle->GetPointIds()->SetId(0,  std::get<0>(**itMesh));
        vtkTriangle->GetPointIds()->SetId(1,  std::get<1>(**itMesh));
        vtkTriangle->GetPointIds()->SetId(2,  std::get<2>(**itMesh));

        cells->InsertNextCell(vtkTriangle);
    }

      //QSurfaceFormat::setDefaultFormat(QVTKOpenGLStereoWidget::defaultFormat());
       vtkNew<vtkRenderer> renderer;
        vtkNew<vtkGenericOpenGLRenderWindow> renderWindow;
        //renderWindow->Initialize();
        vtkNew<vtkRenderWindowInteractor> renderWindowInteractor;
        //renderWindowInteractor->SetRenderWindow(renderWindow);
        //vtkNew<vtkInteractorStyleTrackballCamera> style;
        //renderWindowInteractor->SetInteractorStyle(style);
        vtkNew<vtkPolyData> trianglePolyData;
        trianglePolyData->SetPoints(points);
        trianglePolyData->SetPolys(cells);
        trianglePolyData->GetPointData()->SetScalars(colors);

        vtkNew<vtkPolyDataMapper> mapper;
        mapper->SetInputData(trianglePolyData);

        vtkNew<vtkActor> actor;
        actor->SetMapper(mapper);
        if (IsShowWireframe == false)
        {
            actor->GetProperty()->SetRepresentationToWireframe();
        }

        renderer->AddActor(actor);



        renderWindow->AddRenderer(renderer);

        //renderWindow->SetSize(1280, 960);

        renderWindow->Render();
        Widget(ui->openGLWidget);
        ui->openGLWidget->setRenderWindow(renderWindow);









}
void Widget::ClearMemory(std::vector<Vector3D*> &dots, std::vector<std::tuple<int, int, int>*> &mesh)
{
    std::vector<Vector3D*>::iterator itDots;
    for (itDots = dots.begin(); itDots != dots.end(); itDots++)
    {
        delete *itDots;
    }

    std::vector<std::tuple<int, int, int>*>::iterator itMesh;
    for (itMesh = mesh.begin(); itMesh != mesh.end(); itMesh++)
    {
        delete *itMesh;
    }
}

Widget::~Widget()
{
    delete ui;
}

