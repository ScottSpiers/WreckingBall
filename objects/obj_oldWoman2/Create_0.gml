// Inherit the parent event
event_inherited();

array_push(_dialogs, "Watch your foot, dear! You never know when you might tread on treasure!");
array_push(_dialogs, "Ah, so they want to give the old lass a makeover, do they? That beauty has stood at the heart of this town for generations. I'd know, my family has been here alongside her! A comfort for weary travellers…");
array_push(_dialogs, "My husband, Artie, was one of those travellers. I remember the night he walked through those doors, drenched. Ha! What a sight! I worked there as a girl, you see, and I was on the desk that night. If it weren't for the Teear, we likely wouldn't have met. And I dread to think of my life without that lovely fool by my side…");
array_push(_dialogs, "I admire your tenacity, young lass! I'll pop some of these on display at the museum when I go in for my shift later. Good luck!");

pathPaused = false;
prevSpeed = 0;
isResting = false;
prevPos = 0;

path_start(path_beach, 1,path_action_continue,false);
