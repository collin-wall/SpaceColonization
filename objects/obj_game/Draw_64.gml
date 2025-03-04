// gui variables
var gw = display_get_gui_width();
var gh = display_get_gui_height();

// quota bar positioning
var x1 = gw * 0.25;
var x2 = gw * 0.75;
var y1 = gh * 0.025;
var y2 = gh * 0.05;

// draw quota bar
var amt = (global.quota / global.quota_target) * 100;
draw_healthbar(x1, y1, x2, y2, amt, c_black, c_aqua, c_aqua, 0, true, true);

// draw quota levels
var dist = x2 - x1;
var inc = dist / 3;
for (var i = x1 + inc; i <= x2 - inc; i += inc) {
	draw_line(i, y1, i, y2);
}