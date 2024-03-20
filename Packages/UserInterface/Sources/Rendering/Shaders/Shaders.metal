#include <metal_stdlib>
#include "ShadersModels.h"

using namespace metal;

// MARK: - Camera Shaders

vertex CameraVertexOut vertex_camera_shader(const CameraVertexIn cameraVertexIn [[ stage_in ]]) {
	CameraVertexOut cameraVertexOut;
	cameraVertexOut.position = cameraVertexIn.position;
	cameraVertexOut.textureCoordinates = cameraVertexIn.textureCoordinates;
	return cameraVertexOut;
}

fragment half4 fragment_camera_shader(CameraVertexOut cameraVertexIn [[ stage_in ]],
											  sampler sampler2d [[ sampler(0) ]],
											  texture2d<float> texture [[ texture((0)) ]]) {
	float4 color = texture.sample(sampler2d, cameraVertexIn.textureCoordinates);
	return half4(color.r, color.g, color.b, color.a);
}
