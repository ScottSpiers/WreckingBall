
if(!isShowingDialog && curDialogue < array_length(_dialogs) && keyboard_check_pressed(ord("E")))
{
	if(isTooltipActive && keyboard_check(ord("E")))
	{
		HideTooltip();
		isTooltipActive = false;
		ShowDialog(_dialogs[curDialogue++]);
		isShowingDialog = true;
	}
}
else if (isShowingDialog)
{
	if(keyboard_check_pressed(vk_anykey))
	{
		if(curDialogue < array_length(_dialogs))
		{
			ShowDialog(_dialogs[curDialogue++]);
			return;
		}
		
		HideDialog();
		isShowingDialog = false;
		
		//TODO: base on dialog outcome
		global.signatures += signatures;
		show_debug_message($"Gained {signatures} signatures - Total: {global.signatures}");
		CompleteInteraction();
	}
}