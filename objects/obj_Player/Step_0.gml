if(!global.IsShowingDialog)
{
	Move();
}

var npc = instance_nearest(x, y, obj_dialogParent);

if(!global.IsShowingDialog && npc != noone && npc.isNPC && distance_to_object(npc) < 10)
{
	ShowTooltip(npc.x, npc.y);
	
	npc.isTooltipActive = true;
}
else if(global.IsShowingTooltip)
{
	HideTooltip();
}