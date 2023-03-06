#include "DotCloudReader.h"
#include <fstream>
#include <iostream>
#include <string>
#include <vector>
#include "Triangulation.h"
#include <pcl/ModelCoefficients.h>			//模型系数定义头文件
#include <pcl/filters/project_inliers.h>	//投影滤波类头文件
#include <pcl/kdtree/kdtree_flann.h>
//包含所需的头文件

using namespace std;
std::vector<Vector3D*> dots;
pcl::PointCloud<pcl::PointXYZ>::Ptr cloud2(new pcl::PointCloud<pcl::PointXYZ>);
pcl::PointCloud<pcl::PointXYZ>::Ptr cloud1(new pcl::PointCloud<pcl::PointXYZ>);



vector<std::tuple <int, int, int>*> mesh;
vector<PointCloud> pointSearch;
vector<double> pointDistance;
vector< PointCloud> cloudData;
vector< PointCloud> cloudCADData;
typedef pcl::PointXYZ PointT;
  typedef pcl::PointCloud<PointT> PointCloudT;

void DotCloudReader::importPcd(QString pcdPath)
{
    std::string s = pcdPath.toStdString();

    //创建一个 PointCloud<PointXYZ> boost 共享指针并初始化它。
    pcl::PointCloud<pcl::PointXYZ>::Ptr  cloud(new pcl::PointCloud<pcl::PointXYZ>);
    //pcl::PointCloud<pcl::PointXYZ>::Ptr  cloud1(new pcl::PointCloud<pcl::PointXYZ>);
    //从磁盘加载 PointCloud 数据,并且判断是否
    if (pcl::io::loadPCDFile<pcl::PointXYZ>(s, *cloud) == -1)//*打开点云文件
    {
        PCL_ERROR("Couldn't read file test_pcd.pcd\n");
        qDebug()<< "无法打开点云文件！ ";
    }

    pcl::PCDReader reader; //定义点云读取对象

    if (reader.read(s, *cloud) < 0)
    {
        PCL_ERROR( "\a->点云文件不存在！ ");


    }




    //获取点云数据
    for (size_t i = 0; i < cloud->size(); ++i) {
        PointCloud pointCloud;
        //如果导入残缺圆柱打开下面三行，因为扫描出来的圆柱不在原点，obj圆柱在原点，需要先重合
        pointCloud.x = cloud->points[i].x-13.53;
        pointCloud.y = cloud->points[i].y-19.8;
        pointCloud.z = cloud->points[i].z-6.71;
        //模拟的点云都在原点，用下面的
        //pointCloud.x = cloud->points[i].x ;
        //pointCloud.y = cloud->points[i].y ;
        //pointCloud.z = cloud->points[i].z ;
        cloudData.push_back(pointCloud);

    }

    qDebug() << "cloud:" << cloudData.size() ;



}
void DotCloudReader::importCad(QString cadPath)
{
    std::string s = cadPath.toStdString();

    //创建一个 PointCloud<PointXYZ> boost 共享指针并初始化它。
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);

    //从磁盘加载 PointCloud 数据,并且判断是否
    if (pcl::io::loadPCDFile<pcl::PointXYZ>(s, *cloud) == -1)//*打开点云文件
    {
        PCL_ERROR("Couldn't read file test_pcd.pcd\n");
        qDebug() << "无法打开点云文件！ ";
    }
    pcl::PCDReader reader; //定义点云读取对象
    if (reader.read(s, *cloud) < 0)
    {
        PCL_ERROR("\a->点云文件不存在！\n ");

    }


        //获取点云数据
    for (size_t i = 0; i < cloud->size(); ++i) {
        PointCloud pointCloud;
          //如果导入残缺圆柱打开下面三行，因为扫描出来的圆柱不在原点，obj圆柱在原点，需要先重合
            pointCloud.x = cloud->points[i].x;
            pointCloud.y = cloud->points[i].z;
            pointCloud.z = cloud->points[i].y + 0.83;
          //模拟的点云都在原点，用下面的
         //pointCloud.x = cloud->points[i].x;
         //pointCloud.y = cloud->points[i].y;
         //pointCloud.z = cloud->points[i].z ;
        cloudCADData.push_back(pointCloud);
        //qDebug()<< cloudCADData [i].x<< cloudCADData[i].y<< cloudCADData[i].z <<endl;
    }
    qDebug()  << cloudCADData.size() ;

}
void DotCloudReader::Search()
{

    for (size_t i = 0; i < cloudCADData.size(); ++i) {
        pcl::PointXYZ pointXYZ2;
        pointXYZ2.x = cloudCADData[i].x;
        pointXYZ2.y = cloudCADData[i].y;
        pointXYZ2.z = cloudCADData[i].z;
        cloud2->push_back(pointXYZ2);
    }
    for (size_t i = 0; i < cloudData.size(); ++i) {
        pcl::PointXYZ pointXYZ1;
        pointXYZ1.x = cloudData[i].x;
        pointXYZ1.y = cloudData[i].y;
        pointXYZ1.z = cloudData[i].z;
        cloud1->push_back(pointXYZ1);
    }
    //qDebug()<<"cad:" << cloudCADData.size() << endl;
    //qDebug() <<"cloud:" <<cloudData.size() << endl;
    pcl::KdTreeFLANN<pcl::PointXYZ> kdtree;
    kdtree.setInputCloud(cloud2);
    pcl::PointCloud<pcl::PointXYZ>::Ptr source_key_Neigh(new pcl::PointCloud<pcl::PointXYZ>());
    pcl::PointCloud<pcl::PointXYZ>::Ptr source_key_point(new pcl::PointCloud<pcl::PointXYZ>());
    //std::vector<int> pointIdxRadiusSearch;
    //std::vector<float> pointRadiusSquaredDistance;
    std::vector<int> pointIdxNKNSearch;
    std::vector<float> pointNKNSquaredDistance;
    //设置输入点
    pcl::PointXYZ searchPoint;    //source_22

    for (int i =0; i < cloud1->size(); i++)

    {

            searchPoint = cloud1->at(i);
            source_key_point->push_back(cloud1->at(i));
            //设置邻域半径
            //float radius = 0.005;
            int K = 1;


            //利用最少点数搜索邻近点
            if (kdtree.nearestKSearch(searchPoint, K, pointIdxNKNSearch, pointNKNSquaredDistance) >= 0)
            {

                for (size_t i = 0; i < pointIdxNKNSearch.size(); ++i) {

                    PointCloud pointcloud;

                    pointcloud.x = searchPoint.x;
                    pointcloud.y = searchPoint.y;
                    pointcloud.z = searchPoint.z;
                    pointcloud.d = pointNKNSquaredDistance[i];

                    pointSearch.push_back(pointcloud);
                    pointDistance.push_back(pointNKNSquaredDistance[i]);
                }


            }

    }


    double maxDistance = *max_element(pointDistance.begin(), pointDistance.end());
    double minDistance = *min_element(pointDistance.begin(), pointDistance.end());
    //double midDistance = (maxDistance - minDistance) / 2.0;
    //qDebug()<< maxDistance <<" " << minDistance<<" "<< midDistance << endl;

   double midDistance8 = (maxDistance - minDistance) / 5.0;

   for (int i = 0; i < pointSearch.size(); i++) {

           if (pointSearch[i].d <= 0.0005) {
               pointSearch[i].R = 0;
               pointSearch[i].G = 255;
               pointSearch[i].B = 0;
           }
           else if (pointSearch[i].d > 0.0005 && pointSearch[i].d <= midDistance8)
           {
               //qDebug() << 1111 << endl;
               //TmpColor = (pointSearch[i].d - minDistance) / (midDistance2 - minDistance);
               pointSearch[i].R = 23;//r /255.0;
               pointSearch[i].G = 192;
               pointSearch[i].B = 239;
           }
           else if (pointSearch[i].d > midDistance8&& pointSearch[i].d <= 2 * midDistance8) {
               pointSearch[i].R = 30;//r /255.0;
               pointSearch[i].G = 144;
               pointSearch[i].B = 242;
           }
           else if (pointSearch[i].d > 2 * midDistance8 && pointSearch[i].d <= 3 * midDistance8)
           {
               //TmpColor = (pointSearch[i].d - minDistance) / (midDistance - minDistance);
               pointSearch[i].R = 30;//r /255.0;
               pointSearch[i].G = 112;
               pointSearch[i].B = 236;
           }
           else if (pointSearch[i].d > 3 * midDistance8 && pointSearch[i].d <= 4 * midDistance8)
           {
               //TmpColor = (pointSearch[i].d - minDistance) / (midDistance - minDistance);
               pointSearch[i].R = 30;//r /255.0;
               pointSearch[i].G = 80;
               pointSearch[i].B = 246;
           }
           else
           {
               //TmpColor = (pointSearch[i].d - minDistance) / (midDistance - minDistance);
               pointSearch[i].R = 30;//r /255.0;
               pointSearch[i].G = 50;
               pointSearch[i].B = 255;
           }

           double x=pointSearch[i].x;
           double y=pointSearch[i].y;
           double z=pointSearch[i].z;
           int R=pointSearch[i].R;
           int G=pointSearch[i].G;
           int B=pointSearch[i].B;
           Vector3D* dot = new Vector3D(x,y,z,R,G,B);
           dots.push_back(dot);
     }
   //for(int i=0;i<dots.size();i++){
   //    qDebug()<<dots[i]->X<<" "<<dots[i]->Y<<" "<<dots[i]->Z;
   // }
    //std::vector<Vector3D*> dots=DotCloudReader().GetDotCloud();
    DelaunayTriangulation triangulation = DelaunayTriangulation();
     mesh = triangulation.GetTriangulationResult(dots);
}
