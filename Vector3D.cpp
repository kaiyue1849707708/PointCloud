#include <cmath>
#include <string>
#include "DataStructure.h"





Vector3D::Vector3D(double x, double y, double z, int r, int g, int b)
{
    Id = GenerateRunningId();

    X = x;
    Y = y;
    Z = z;

    R = r;
    G = g;
    B = b;
}

Vector3D::Vector3D(double x, double y, double z, bool isAuxiliaryDot, int r, int g, int b)
{
    Id = GenerateRunningId();

    IsAuxiliaryDot = isAuxiliaryDot;

    X = x;
    Y = y;
    Z = z;

    R = r;
    G = g;
    B = b;
}

Vector3D::Vector3D(Vector3D* dot, double lengthAfterProjection)
{
    Id = dot->Id;
    IsVisited = dot->IsVisited;
    IsAuxiliaryDot = dot->IsAuxiliaryDot;

    double length = sqrt(pow(dot->X, 2) + pow(dot->Y, 2) + pow(dot->Z, 2));
    double scaleFactor = lengthAfterProjection / length;

    X = scaleFactor * dot->X;
    Y = scaleFactor * dot->Y;
    Z = scaleFactor * dot->Z;


    R = dot->R;
    G = dot->G;
    B = dot->B;
}

Vector3D::~Vector3D()
{
}

int Vector3D::GenerateRunningId()
{
    static int id = 0;
    return id++;
}

bool Vector3D::IsCoincidentWith(Vector3D* dot)
{
    return (X == dot->X && Y == dot->Y && Z == dot->Z);
}

std::string Vector3D::ToString()
{
    return "Dot ID: " + std::to_string(Id) + "; "
        + std::to_string(X) + ", " + std::to_string(Y) + ", " + std::to_string(Z) + "; "
        + std::to_string(R) + ", " + std::to_string(G) + ", " + std::to_string(B) + "; "
        + "IsVisited: " + (IsVisited ? "true" : "false") + "; "
        + "IsAuxiliaryDot: " + (IsAuxiliaryDot ? "true" : "false") + ";\n";
}
