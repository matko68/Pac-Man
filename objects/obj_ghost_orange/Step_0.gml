////////////////////////////////////////////////////////////////////////////////////////////////////////

if (bool_triggered and not bool_moving) {
	y += int_speed;
	if (y == int_y_out_orange) {
		bool_moving = true;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////

if (bool_moving and not bool_special) {
	speed = int_speed;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////


if (bool_special and not bool_eaten) {
	
	speed = int_speed_special;
	
	int_special_time++;
	if (int_special_time == 1000) {
		int_special_time = 0;
		bool_special = false;
		if (x % 2 == 1) x += 1;
		if (y % 2 == 1) y += 1;
	}
	
	bool_right = false;
	bool_up = false;
	bool_left = false;
	bool_down = false;
	
	if (!place_meeting(x + sprite_width / 2, y, obj_obstacle) and direction != 180) bool_right = true;
	if (!place_meeting(x, y - sprite_height / 2, obj_obstacle) and direction != 270) bool_up = true;
	if (!place_meeting(x - sprite_width / 2, y, obj_obstacle) and direction != 0) bool_left = true;
	if (!place_meeting(x, y + sprite_height / 2, obj_obstacle) and direction != 90) bool_down = true;
	
	int_max = 0;
	
	int_x = obj_pacman.x;
	int_y = obj_pacman.y;
	
	if (bool_right) {
		int_distance = point_distance(x + sprite_width, y, int_x, int_y);
		if (int_distance > int_max) {
			int_max = int_distance;
			direction = 0;
		}
	}
	
	if (bool_up) {
		int_distance = point_distance(x, y - sprite_height, int_x, int_y);
		if (int_distance > int_max) {
			int_max = int_distance;
			direction = 90;
		}
	}
	
	if (bool_left) {
		int_distance = point_distance(x - sprite_width, y, int_x, int_y);
		if (int_distance > int_max) {
			int_max = int_distance;
			direction = 180;
		}
	}
	
	if (bool_down) {
		int_distance = point_distance(x, y + sprite_height, int_x, int_y);
		if (int_distance > int_max) {
			int_max = int_distance;
			direction = 270;
		}
	}
	
}


////////////////////////////////////////////////////////////////////////////////////////////////////////


if (bool_special and bool_eaten) {
	
	bool_right = false;
	bool_up = false;
	bool_left = false;
	bool_down = false;
	
	if (!place_meeting(x + sprite_width / 2, y, obj_obstacle) and direction != 180) bool_right = true;
	if (!place_meeting(x, y - sprite_height / 2, obj_obstacle) and direction != 270) bool_up = true;
	if (!place_meeting(x - sprite_width / 2, y, obj_obstacle) and direction != 0) bool_left = true;
	if (!place_meeting(x, y + sprite_height / 2, obj_obstacle) and direction != 90) bool_down = true;
	
	int_min = 9999;
	
	if (bool_right) {
		int_distance = point_distance(x + sprite_width, y, int_x_in, int_y_out_orange);
		if (int_distance < int_min) {
			int_min = int_distance;
			direction = 0;
		}
	}
	
	if (bool_up) {
		int_distance = point_distance(x, y - sprite_height, int_x_in, int_y_out_orange);
		if (int_distance < int_min) {
			int_min = int_distance;
			direction = 90;
		}
	}
	
	if (bool_left) {
		int_distance = point_distance(x - sprite_width, y, int_x_in, int_y_out_orange);
		if (int_distance < int_min) {
			int_min = int_distance;
			direction = 180;
		}
	}
	
	if (bool_down) {
		int_distance = point_distance(x, y + sprite_height, int_x_in, int_y_out_orange);
		if (int_distance < int_min) {
			int_min = int_distance;
			direction = 270;
		}
	}
	
	if (x == int_x_in and y == int_y_out_orange) {
		bool_special = false;
		speed = 0;
	} else {
		speed = int_speed;
	}
	
}

////////////////////////////////////////////////////////////////////////////////////////////////////////


if (not bool_special and bool_eaten) {
	y -= int_speed;
	if (y == int_y_in) {
		bool_ready = true;
		bool_eaten = false;
		direction = 0;
		sprite_index = spr_ghost_orange_right;
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////////