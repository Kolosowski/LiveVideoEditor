#include <metal_stdlib>
using namespace metal;

struct VertexInTexture {
	float4 position [[ attribute((0)) ]];
	float2 textureCoordinates [[ attribute(1) ]];
};

struct VertexOutTexture {
	float4 position [[ position ]];
	float2 textureCoordinates;
};

vertex VertexOutTexture vertex_shader_texture(const VertexInTexture vertexIn [[ stage_in ]]) {
	VertexOutTexture vertexOut;
	vertexOut.position = vertexIn.position;
	vertexOut.textureCoordinates = vertexIn.textureCoordinates;
	return vertexOut;
}

fragment half4 fragment_shader_texture(VertexOutTexture vertexIn [[ stage_in ]],
									   sampler sampler2d [[ sampler(0) ]],
									   texture2d<float> texture [[ texture((0)) ]]) {
	float4 color = texture.sample(sampler2d, vertexIn.textureCoordinates);
	return half4(color.r, color.g, color.b, 1);
}
