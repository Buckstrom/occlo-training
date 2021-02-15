switch (jumping) {
	case true:
	var _jumpOffset = -100;
	break;
	case false:
	var _jumpOffset = 100;
	break;
}
switch (hurt) {
	case false:
	var _color = c_white
	break;
	case true:
	var _color = c_red
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text(view_wport[0] / 2, view_hport[0], "Ouch!")
	break;
}
draw_set_color(_color)
draw_circle(view_wport[0] / 2, (view_hport[0] / 2) + _jumpOffset, 25, false);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_yellow);
var _text = "SPACE / LCTRL: Jump\nALT: View Variables"
if (view_variables) {
	_text += "\nJump Time: "
	switch (alarm[0]) {
		case -1:
		_text += "N/A"
		break;
		default:
		_text += string(alarm[0])
		break;
	}
	_text += "\nJump Cooldown: "
	switch (alarm[1]) {
		case -1:
		_text += "N/A"
		break;
		default:
		_text += string(alarm[1])
		break;
	}
	_text += "\nSequence Frame: " + string(timeline_position)
	+ "\nJumping: " + string(jumping) + "\nAttacking: " + string(attacking);
}
draw_text(view_wport[0] / 2, 0, _text)