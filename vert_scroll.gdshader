shader_type canvas_item;

void fragment() {
	float speed = 0.1 * TIME;
    vec2 uv = vec2(UV.x, UV.y - speed);
    COLOR.rgba = texture(TEXTURE, uv).rgba;
}