//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	//Give the sprite a red tint
    gl_FragColor = vec4(1.0, 0.0, 0.0, .5) * texture2D( gm_BaseTexture, v_vTexcoord );
}
