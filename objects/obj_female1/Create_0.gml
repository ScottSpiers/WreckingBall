// Inherit the parent event
event_inherited();

array_push(_dialogs, $"{name}");

pathPaused = false;
prevSpeed = 0;

path_start(path_store, 1,path_action_continue,false);

image_speed = 0.66;