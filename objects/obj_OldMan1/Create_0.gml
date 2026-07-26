// Inherit the parent event
event_inherited();

array_push(_dialogs, $"{name}");

pathPaused = false;
prevSpeed = 0;
isResting = false;
prevPos = 0;

path_start(path_parkSlow, 1,path_action_continue,false);