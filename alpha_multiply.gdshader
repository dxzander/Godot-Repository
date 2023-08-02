shader_type canvas_item;
uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest;
uniform float alpha = 0.5;

vec4 multiply(vec4 base, vec4 blend){
	return base * blend;
}

void fragment() {
	vec4 blend = texture(TEXTURE, UV);
	vec4 base = textureLod(screen_texture, SCREEN_UV, 0.0);
	COLOR = multiply(base, blend);
	COLOR.a = alpha;
}


