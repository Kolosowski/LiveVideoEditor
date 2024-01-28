#include <metal_stdlib>
#include "ShadersModels.h"

using namespace metal;

// MARK: - Camera Shaders

vertex CameraVertexOut vertex_camera_shader_texture(const CameraVertexIn CameraVertexIn [[ stage_in ]]) {
	CameraVertexOut CameraVertexOut;
	CameraVertexOut.position = CameraVertexIn.position;
	CameraVertexOut.textureCoordinates = CameraVertexIn.textureCoordinates;
	return CameraVertexOut;
}

fragment half4 fragment_camera_shader_texture(CameraVertexOut CameraVertexIn [[ stage_in ]],
									   sampler sampler2d [[ sampler(0) ]],
									   texture2d<float> texture [[ texture((0)) ]]) {
	float4 color = texture.sample(sampler2d, CameraVertexIn.textureCoordinates);
	return half4(color.r, color.g, color.b, 1);
}
