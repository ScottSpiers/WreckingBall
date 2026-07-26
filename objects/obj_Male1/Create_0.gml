// Inherit the parent event
event_inherited();

array_push(_dialogs, $"Hey there! I can't get over how beautiful this place is. It must be such a delight to have all of this on your doorstep!");
array_push(_dialogs, $"That's disappointing. A few years back - after 11 years as a journalist and a mini-stroke! - I stepped away from the rat race. Now I'm a travel vlogger! It took some time, mind you, but it was worth it...");
array_push(_dialogs, $"It's getting more difficult to find these little pockets of peace. Places where you feel truly rested after visiting. Even when I do find them, often by the time I return, the big businesses have moved in. And although the changes seem positive on the surface, a cinema and new businesses, you never find yourself as refreshed after visiting as you did before.");
array_push(_dialogs, $"I'll share the petition with my followers, of course, and hopefully we can help stave them off a little longer at least!");

pathPaused = false;
prevSpeed = 0;

path_start(path_park, 1,path_action_continue,false);