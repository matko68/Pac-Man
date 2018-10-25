if (other.bool_special) {
	if (not other.bool_eaten) {
		int_score += 500;
	}
	other.bool_ready = false;
	other.bool_triggered = false;
	other.bool_moving = false;
	other.bool_eaten = true;
	if (other.x % 2 == 1) other.x += 1;
	if (other.y % 2 == 1) other.y += 1;
} else {
	game_restart();
}