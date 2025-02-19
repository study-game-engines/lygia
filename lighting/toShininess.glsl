/*
contributors: Patricio Gonzalez Vivo
description: Convertes from PBR roughness/metallic to a shininess factor (typaclly use on diffuse/specular/ambient workflow) 
use: float toShininess(<float> roughness, <float> metallic)
*/

#ifndef FNC_TOSHININESS
#define FNC_TOSHININESS
float toShininess(const in float roughness, const in float metallic) {
    float s = .95 - roughness * 0.5;
    s *= s;
    s *= s;
    return s * (80. + 160. * (1.0-metallic));
}
#endif