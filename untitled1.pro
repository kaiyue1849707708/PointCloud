QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
INCLUDEPATH += D:/PCL1.12.1/include/pcl-1.12
INCLUDEPATH += D:/PCL1.12.1/3rdParty/Boost/include/boost-1_78
INCLUDEPATH += D:/PCL1.12.1/3rdParty/Eigen/eigen3
INCLUDEPATH += D:/PCL1.12.1/3rdParty/FLANN/include
INCLUDEPATH += D:/PCL1.12.1/3rdParty/OpenNI2/Include
INCLUDEPATH += D:/PCL1.12.1/3rdParty/Qhull/include
INCLUDEPATH += D:/PCL1.12.1/3rdParty/VTK/include/vtk-9.1





LIBS += E:/PCL/PCL3/LearnOpenGL/libraries/freeglut/lib/x64/freeglut.lib
win32:CONFIG(release, debug|release):{
    LIBS += -LD:/PCL1.12.1/3rdParty/Qhull/lib/ -lqhull_r
}
else:win32:CONFIG(debug, debug|release):{
    LIBS += -LD:/PCL1.12.1/3rdParty/Qhull/lib/ -lqhull_rd
}

win32:CONFIG(release, debug|release):{
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_filters
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_io
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_io_ply
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_kdtree
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_keypoints
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_ml
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_octree
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_outofcore
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_people
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_recognition
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_registration
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_sample_consensus
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_search
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_segmentation
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_stereo
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_surface
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_tracking
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_visualization
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_common
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_features
    LIBS += -LD:/PCL1.12.1/3rdParty/FLANN/lib/ -lflann
#    LIBS += -LD:/PCL1.12.1/3rdParty/Qhull/lib/ -lqhullstatic
}
else:win32:CONFIG(debug, debug|release):{
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_filtersd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_io_plyd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_iod
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_kdtreed
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_keypointsd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_mld
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_octreed
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_outofcored
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_peopled
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_recognitiond
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_registrationd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_sample_consensusd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_searchd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_segmentationd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_stereod
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_surfaced
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_trackingd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_visualizationd
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_commond
    LIBS += -LD:/PCL1.12.1/lib/ -lpcl_featuresd
    LIBS += -LD:/PCL1.12.1/3rdParty/FLANN/lib/ -lflann-gd
#    LIBS += -LD:/PCL1.12.1/3rdParty/Qhull/lib/ -lqhullstatic_d
}

win32:CONFIG(release, debug|release):{
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_atomic-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_bzip2-vc142-mt-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_chrono-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_container-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_context-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_contract-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_coroutine-vc142-mt-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_date_time-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_exception-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_fiber-vc142-mt-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_filesystem-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_graph_parallel-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_graph-vc142-mt-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_iostreams-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_locale-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_log_setup-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_log-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_c99f-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_c99l-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_c99-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_tr1f-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_tr1l-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_tr1-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_mpi-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_numpy27-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_numpy37-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_program_options-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_random-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_regex-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_serialization-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_signals-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_stacktrace_noop-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_stacktrace_windbg_cached-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_stacktrace_windbg-vc142-mt-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_system-vc142-mt-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_thread-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_timer-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_type_erasure-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_wave-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_wserialization-vc142-mt-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_zlib-vc142-mt-x64-1_78.lib
}
else:win32:CONFIG(debug, debug|release):{
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_atomic-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_bzip2-vc142-mt-gd-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_chrono-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_container-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_context-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_contract-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_coroutine-vc142-mt-gd-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_date_time-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_exception-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_fiber-vc142-mt-gd-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_filesystem-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_graph_parallel-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_graph-vc142-mt-gd-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_iostreams-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_locale-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_log_setup-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_log-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_c99f-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_c99l-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_c99-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_tr1f-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_tr1l-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_math_tr1-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_mpi-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_numpy27-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_numpy37-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_program_options-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_random-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_regex-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_serialization-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_signals-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_stacktrace_noop-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_stacktrace_windbg_cached-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_stacktrace_windbg-vc142-mt-gd-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_system-vc142-mt-gd-x64-1_78.lib
    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_thread-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_timer-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_type_erasure-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_wave-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_wserialization-vc142-mt-gd-x64-1_78.lib
#    LIBS += D:/PCL1.12.1/3rdParty/Boost/lib/libboost_zlib-vc142-mt-gd-x64-1_78.lib
}

win32:CONFIG(release, debug|release):{
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonDataModel-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonExecutionModel-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonMath-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonMisc-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonSystem-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonTransforms-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkDICOMParser-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkDomainsChemistry-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkDomainsChemistryOpenGL2-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkdoubleconversion-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkexodusII-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkexpat-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersAMR-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersExtraction-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersFlowPaths-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersGeneral-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersGeneric-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersGeometry-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersHybrid-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersHyperTree-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersImaging-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersModeling-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersParallel-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersParallelImaging-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersPoints-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersProgrammable-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersSelection-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersSMP-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersSources-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersStatistics-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersTexture-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersTopology-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersVerdict-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkfreetype-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkGeovisCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkgl2ps-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkglew-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkGUISupportQt-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkGUISupportQtSQL-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkhdf5_hl-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkhdf5-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingColor-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingFourier-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingGeneral-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingHybrid-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingMath-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingMorphological-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingSources-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingStatistics-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingStencil-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInfovisCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInfovisLayout-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInteractionImage-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInteractionStyle-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInteractionWidgets-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOAMR-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOAsynchronous-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOCityGML-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOEnSight-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOExodus-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOExport-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOExportPDF-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOGeometry-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOImage-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOImport-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOInfovis-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOLegacy-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOLSDyna-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOMINC-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOMovie-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIONetCDF-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOParallel-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOParallelXML-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOPLY-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOSegY-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOSQL-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOTecplotTable-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOVeraOut-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOVideo-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOXML-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOXMLParser-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkjpeg-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkjsoncpp-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklibharu-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklibxml2-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklz4-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklzma-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkmetaio-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkNetCDF-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkogg-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkParallelCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkpng-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkpugixml-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingAnnotation-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingContext2D-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingContextOpenGL2-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingFreeType-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingGL2PSOpenGL2-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingImage-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingLabel-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingLOD-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingOpenGL2-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingQt-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingVolume-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingVolumeOpenGL2-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtksqlite-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtksys-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtktheora-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtktiff-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkverdict-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsContext2D-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsInfovis-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsQt-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkzlib-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkChartsCore-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonColor-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonComputationalGeometry-9.1.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonCore-9.1.lib
}
else:win32:CONFIG(debug, debug|release):{
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonDataModel-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonExecutionModel-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonMath-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonMisc-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonSystem-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonTransforms-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkDICOMParser-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkDomainsChemistry-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkDomainsChemistryOpenGL2-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkdoubleconversion-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkexodusII-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkexpat-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersAMR-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersExtraction-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersFlowPaths-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersGeneral-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersGeneric-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersGeometry-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersHybrid-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersHyperTree-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersImaging-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersModeling-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersParallel-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersParallelImaging-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersPoints-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersProgrammable-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersSelection-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersSMP-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersSources-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersStatistics-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersTexture-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersTopology-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkFiltersVerdict-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkfreetype-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkGeovisCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkgl2ps-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkglew-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkGUISupportQt-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkGUISupportQtSQL-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkhdf5_hl-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkhdf5-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingColor-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingFourier-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingGeneral-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingHybrid-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingMath-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingMorphological-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingSources-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingStatistics-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkImagingStencil-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInfovisCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInfovisLayout-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInteractionImage-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInteractionStyle-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkInteractionWidgets-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOAMR-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOAsynchronous-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOCityGML-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOEnSight-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOExodus-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOExport-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOExportPDF-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOGeometry-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOImage-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOImport-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOInfovis-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOLegacy-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOLSDyna-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOMINC-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOMovie-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIONetCDF-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOParallel-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOParallelXML-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOPLY-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOSegY-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOSQL-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOTecplotTable-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOVeraOut-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOVideo-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOXML-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkIOXMLParser-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkjpeg-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkjsoncpp-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklibharu-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklibxml2-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklz4-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtklzma-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkmetaio-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkNetCDF-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkogg-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkParallelCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkpng-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkpugixml-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingAnnotation-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingContext2D-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingContextOpenGL2-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingFreeType-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingGL2PSOpenGL2-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingImage-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingLabel-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingLOD-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingOpenGL2-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingQt-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingVolume-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkRenderingVolumeOpenGL2-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtksqlite-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtksys-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtktheora-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtktiff-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkverdict-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsContext2D-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsInfovis-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkViewsQt-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkzlib-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkChartsCore-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonColor-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonComputationalGeometry-9.1d.lib
    LIBS += D:/PCL1.12.1/3rdParty/VTK/lib/vtkCommonCore-9.1d.lib
}



SOURCES += \
    DelaunayTriangulation.cpp \
    DotCloudReader.cpp \
    Triangle.cpp \
    Vector3D.cpp \
    main.cpp \
    widget.cpp

HEADERS += \
    DataStructure.h \
    DotCloudReader.h \
    Triangulation.h \
    widget.h

FORMS += \
    widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
