// Inherit the parent event
event_inherited();

if(!pathPaused && isShowingDialog)
{
	PausePath();
	FacePlayer(spr_OldManNPC_1_Idle_Right, spr_OldManNPC_1_Idle_Up, spr_OldManNPC_1_Idle_Left, spr_OldMan_1_Idle_Down);
}

if(pathPaused && !isShowingDialog)
{
	ResumePath();
}

if(path_speed <= 0)
{
	FacePlayer(spr_OldManNPC_1_Idle_Right, spr_OldManNPC_1_Idle_Up, spr_OldManNPC_1_Idle_Left, spr_OldMan_1_Idle_Down);
	
	//TODO: Pause Path at certain spots
	//SetIdle(spr_OldWomanNPC_1_Walk_Right, spr_OldWomanNPC_1_Walk_Up, spr_OldWomanNPC_1_Walk_Left, spr_OldWomanNPC_1_Walk_Down, 
	//spr_OldWomanNPC_1_Idle_Right, spr_OldWomanNPC_1_Idle_Up, spr_OldWomanNPC_1_Idle_Left, spr_OldWomanNPC_1_Idle_Down);
	return;
}

UpdateDirection(spr_OldManNPC_1_Walk_Right, spr_OldManNPC_1_Walk_Up, spr_OldManNPC_1_Walk_Left, spr_OldManNPC_1_Walk_Down);