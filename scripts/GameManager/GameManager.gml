function InitGameManager()
{
	global.intsPerDay = interactionsPerDay;
	global.requiredSignatures = requiredSignatures;
	global.daysLeft = 2;
	global.interactions = 0;
	global.signatures = 0;
	global.isEnvelopeOpen = false;
}

function CompleteInteraction()
{
	++global.interactions;
	CheckForEndOfDay();
}

function CheckForEndOfDay()
{
	if(global.interactions >= global.intsPerDay)
	{
		global.interactions = 0;
		
		if(room_exists(room_next(room)))
		{
			HideHUD();
			room_goto_next();
		}
	}
}