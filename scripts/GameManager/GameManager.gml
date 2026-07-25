function InitGameManager()
{
	global.intsPerDay = interactionsPerDay;
	global.requiredSignatures = requiredSignatures;
	global.curDay = 1;
	global.interactions = 0;
	global.signatures = 0;
	
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
			room_goto_next();
		}
	}
}