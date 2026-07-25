// Inherit the parent event
event_inherited();

array_push(_dialogs, "Wooo beach!");
array_push(_dialogs, "Get outta my way!");

pathPaused = false;
prevSpeed = 0;

path_start(path_beach, 1,path_action_continue,false);