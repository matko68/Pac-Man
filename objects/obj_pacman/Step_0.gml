int_x = x - sprite_width / 2;
int_y = y - sprite_height / 2;

if (keyboard_check(vk_right) && !(collision_rectangle(int_x + sprite_width + 1, int_y + 1, int_x + sprite_width * 2 - 1, int_y + sprite_height - 1, obj_obstacle, false, false))) {
	direction = 0;
	image_angle = 0;
	bool_moving = true;
}

if (keyboard_check(vk_up) && !(collision_rectangle(int_x + 1, int_y - sprite_height + 1, int_x + sprite_width - 1, int_y - 1, obj_obstacle, false, false))) {
	direction = 90;
	image_angle = 90;
	bool_moving = true;
}

if (keyboard_check(vk_left) && !(collision_rectangle(int_x - sprite_width + 1, int_y + 1, int_x - 1, int_y + sprite_height - 1, obj_obstacle, false, false))) {
	direction = 180;
	image_angle = 180;
	bool_moving = true;
}

if (keyboard_check(vk_down) && !(collision_rectangle(int_x + 1, int_y + sprite_height + 1, int_x + sprite_width - 1, int_y + sprite_height * 2 - 1, obj_obstacle, false, false))) {
	direction = 270;
	image_angle = 270;
	bool_moving = true;
}

if (bool_moving) {
	speed = int_speed;
} else {
	speed = 0;
}