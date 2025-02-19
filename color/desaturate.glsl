/*
contributors: Patricio Gonzalez Vivo
description: Change saturation of a color
use: desaturate(<float|vec3|vec4> color, float amount)
*/

#ifndef FNC_DESATURATE
#define FNC_DESATURATE
vec3 desaturate(in vec3 v, in float a ) {
    return mix(v, vec3(dot(vec3(.3, .59, .11), v)), a);
}

vec4 desaturate(in vec4 v, in float a ) {
    return vec4(desaturate(v.rgb, a), v.a);
}
#endif
