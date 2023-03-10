#ifndef DATASTRUCTURE_H
#define DATASTRUCTURE_H
#include <string>

    class Vector3D
    {
    private:
        int GenerateRunningId();
    public:
        int Id = 0;

        // coordinate
        double X, Y, Z;

        // color
        int R, G, B;

        bool IsVisited = false;
        bool IsAuxiliaryDot = false;

        Vector3D(double x, double y, double z, int r  , int g , int b );
        Vector3D(double x, double y, double z, bool isAuxiliaryDot, int r , int g, int b );

        Vector3D(Vector3D* dot, double lengthAfterProjection);
        ~Vector3D();

        bool IsCoincidentWith(Vector3D* dot);
        std::string ToString();
    };

    class Triangle
    {
    private:
        int GenerateRunningId();
    public:
        int Id = 0;

        // pointers pointing to 3 vertices
        Vector3D* Vertex[3];

        // pointers pointing to 3 neighbors
        Triangle* Neighbor[3];

        Triangle(Vector3D* v0, Vector3D* v1, Vector3D* v2);
        ~Triangle();

        bool HasVertexCoincidentWith(Vector3D* dot);
        void AssignNeighbors(Triangle* n0, Triangle* n1, Triangle* n2);
        std::string ToString();
    };

#endif
