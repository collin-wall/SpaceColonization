var debug_text = [
	"debugging: " + string(global.debugging),
	"instances: " + string(instance_count)
];

for (var i = 0; i < array_length(debug_text); i++) {
	draw_text(5, 5 + (i * 24), string(debug_text[i]));
}