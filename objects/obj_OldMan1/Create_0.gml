// Inherit the parent event
event_inherited();

array_push(_dialogs, $"Good morning to you lass! What have you got for me there?");
array_push(_dialogs, $"I feel for you young ones. We see more and more visitors every summer. And who can blame them! But it's getting harder and harder to convince big corporations that we're not worth a glance...");
array_push(_dialogs, $"I was a visitor myself once, believe it or not. I remember how enamoured I was with the place. And not just because I met the love of my life here! Once I moved, my wife and I would spend hours scouring the beach for precious shells. I can't quite make it down there anymore, my knees aren't what they used to be, but the view from the park is still a treat...");
array_push(_dialogs, $"You’re in luck, though! Tonight is the weekly Green Giants committee meeting. This can go at the top of the agenda! I am chair after all and this is our town. Ha!");

pathPaused = false;
prevSpeed = 0;
isResting = false;
prevPos = 0;

path_start(path_parkSlow, 1,path_action_continue,false);