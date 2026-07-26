if(isStartupComplete)
	return;

var mousePressed = mouse_check_button_released(mb_left);

if(!isEnvelopeOpen && mousePressed)
{
	isEnvelopeOpen = true;
	ShowEmail();
}
else if(isEnvelopeOpen && !isEmailRead && mousePressed )
{	
	isEmailRead = true;
	HideEmail();
	ShowPlayerPrompt();
}
else if(isEmailRead && mousePressed)
{
	isStartupComplete = true;
	HidePlayerPrompt();
	room_goto_next();
}