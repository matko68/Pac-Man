instance_destroy(other);

if (obj_ghost_red.bool_moving) {
	obj_ghost_red.bool_special = true;
	obj_ghost_red.sprite_index = spr_ghost_special;
	obj_ghost_red.int_special_time = 0;
}

if (obj_ghost_pink.bool_moving) {
	obj_ghost_pink.bool_special = true;
	obj_ghost_pink.sprite_index = spr_ghost_special;
	obj_ghost_pink.int_special_time = 0;
}

if (obj_ghost_cyan.bool_moving) {
	obj_ghost_cyan.bool_special = true;
	obj_ghost_cyan.sprite_index = spr_ghost_special;
	obj_ghost_cyan.int_special_time = 0;
}

if (obj_ghost_orange.bool_moving) {
	obj_ghost_orange.bool_special = true;
	obj_ghost_orange.sprite_index = spr_ghost_special;
	obj_ghost_orange.int_special_time = 0;
}