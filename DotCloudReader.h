#ifndef DOTCLOUDREADER_H
#define DOTCLOUDREADER_H

#include <string>
#include<vector>
#include<qdebug.h>
#include<pcl/io/pcd_io.h>
#include<pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>           //用于体素网格化的滤波类头文件
#include <pcl/filters/filter.h>             //滤波相关头文件
#include <pcl/filters/passthrough.h>
#include <pcl/filters/project_inliers.h>          //滤波相关类头文件
#include <pcl/filters/statistical_outlier_removal.h> //统计方法去除离群点
#include <pcl/filters/radius_outlier_removal.h> //统计方法去除离群点
#include <pcl/filters/approximate_voxel_grid.h>  //ApproximateVoxelGrid
#include "DataStructure.h"


 struct PointCloud
 {
     float x;
     float y;
     float z;
     float d;
     int R;
     int G;
     int B;
 };

 extern  std::vector< PointCloud> cloudData;
 extern  std::vector<PointCloud> cloudCADData;
 extern  std::vector<PointCloud> pointSearch;
 extern  std::vector<double> pointDistance;
 extern  std::vector<Vector3D*>  dots;
 extern  std::vector<std::tuple <int, int, int>*> mesh;



class DotCloudReader
{
public:

    void importPcd(QString pcdPath);
    void importCad(QString cadPath);
    void Search();
};


#endif // DOTCLOUDREADER_H
