instance_destroy(other);
int_score++;

if (int_score % 15 == 0 and obj_ghost_red.bool_ready) {
	obj_ghost_red.bool_triggered = true;
}

if (int_score % 35 == 0 and obj_ghost_pink.bool_ready) {
	obj_ghost_pink.bool_triggered = true;
}

if (int_score % 55 == 0 and obj_ghost_cyan.bool_ready) {
	obj_ghost_cyan.bool_triggered = true;
}

if (int_score % 75 == 0 and obj_ghost_orange.bool_ready) {
	obj_ghost_orange.bool_triggered = true;
}

if (instance_number(obj_coin) == 0) {
	game_end();
}