if (!hurt) {
	hurt = attacking && !jumping;
}
var _keyJump = keyboard_check(vk_space) || keyboard_check(vk_lcontrol);
if _keyJump {
	if (!jumping && !hurt && !(alarm[1] > -1)) {
		jumping = true;
		alarm[0] = jump_time;
	}
}
var _keyView = keyboard_check_pressed(vk_alt)
if _keyView {
	view_variables = !view_variables
}