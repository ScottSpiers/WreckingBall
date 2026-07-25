function EndTransition()
{
	room_goto_next();
}

var t = time_source_create(time_source_game, 3, time_source_units_seconds, EndTransition);
time_source_start(t);