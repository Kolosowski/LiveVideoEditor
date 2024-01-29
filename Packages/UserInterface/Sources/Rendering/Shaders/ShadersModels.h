#include <simd/simd.h>

#ifndef ShadersModels_h
#define ShadersModels_h

// MARK: - Camera Models

struct CameraVertexIn {
	float4 position [[ attribute((0)) ]];
	float2 textureCoordinates [[ attribute(1) ]];
};

struct CameraVertexOut {
	float4 position [[ position ]];
	float2 textureCoordinates;
};

#endif
