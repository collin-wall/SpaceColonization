// gui variables
var gw = display_get_gui_width();
var gh = display_get_gui_height();

// quota bar positioning
var qx1 = gw * 0.25;
var qx2 = gw * 0.75;
var qy1 = gh * 0.025;
var qy2 = gh * 0.05;

// draw quota bar
var amt = (global.quota / global.quota_target) * 100;
draw_healthbar(qx1, qy1, qx2, qy2, amt, c_black, c_aqua, c_aqua, 0, true, true);

// draw quota levels
var dist = qx2 - qx1;
var inc = dist / 3;
for (var i = qx1 + inc; i <= qx2 - inc; i += inc) {
	draw_line(i, qy1, i, qy2);
}

// [TEMP] draw buttons
//var button_width = gw * 0.10;
//var button_height = button_width;
//var button_spacing = gw * 0.025;
//var button_edge_buffer = gh * 0.025;

//var bx1 = (gw / 2) - (button_width / 2) - button_width - button_spacing;
//var by1 = gh - button_edge_buffer - button_height;

//for (var i = 0; i < 3; i++) {
//	var spacing = i * (button_width + button_spacing);
//	draw_sprite_stretched(spr_tower_option_button, 0, bx1 + spacing, by1, button_width, button_height);
//}