// Inherit the parent event
event_inherited();

if(!pathPaused && global.IsShowingDialog)
{
	PausePath();
}

if(pathPaused && !global.IsShowingDialog)
{
	ResumePath();
}

if(path_speed <= 0)
{
	SetIdle(spr_OldWomanNPC_1_Walk_Right, spr_OldWomanNPC_1_Walk_Up, spr_OldWomanNPC_1_Walk_Left, spr_OldWomanNPC_1_Walk_Down, 
	spr_OldWomanNPC_1_Idle_Right, spr_OldWomanNPC_1_Idle_Up, spr_OldWomanNPC_1_Idle_Left, spr_OldWomanNPC_1_Idle_Down);
	return;
}

UpdateDirection(spr_OldWomanNPC_1_Walk_Right, spr_OldWomanNPC_1_Walk_Up, spr_OldWomanNPC_1_Walk_Left, spr_OldWomanNPC_1_Walk_Down);
	