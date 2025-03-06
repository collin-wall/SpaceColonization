// gui variables
var gw = display_get_gui_width();
var gh = display_get_gui_height();

#region quota bar

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

#endregion