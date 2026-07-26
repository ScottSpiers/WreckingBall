
if(isComplete)
{
	return;
}

if(!isShowingDialog && isTooltipActive && isNPC && curDialogue < array_length(_dialogs) && keyboard_check_pressed(ord("E")))
{
	HideTooltip();
	isTooltipActive = false;
	ShowDialog(_dialogs[curDialogue], name);
	isShowingDialog = true;
}
else if (isShowingDialog)
{
	if(keyboard_check_pressed(vk_anykey))
	{
		if(curDialogue + 1 < array_length(_dialogs))
		{
			ShowDialog(_dialogs[++curDialogue], name);
			return;
		}
		
		++curDialogue;
		
		HideDialog();
		isShowingDialog = false;
		
		if(!isNPC)
		{
			return;
		}
		
		isComplete = true;
		
		//TODO: base on dialog outcome
		global.signatures += signatures;
		UpdateSignatureUI();
		
		if(isInteraction)
		{
			CompleteInteraction();
		}
	}
}