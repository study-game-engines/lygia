#include "triangle.hlsl"

/*
contributors: Patricio Gonzalez Vivo
description: Returns the area of a triangle
use: <float3> normal(<Triangle> tri) 
*/

#ifndef FNC_TRIANGLE_AREA
#define FNC_TRIANGLE_AREA
float area(Triangle _tri) { return length( cross( _tri.b - _tri.a, _tri.c - _tri.a) ) * 0.5f; }
#endif