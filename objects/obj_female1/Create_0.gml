// Inherit the parent event
event_inherited();

array_push(_dialogs, $"Oh, that book you ordered arrived in the other day. Shop'll be open again tomorrow as usual. What've you got there?");
array_push(_dialogs, $"Ugh, I saw. So much for my grand plans of opening a bookstore by the sea and living my days out in peace. At least I got a few years before the big corps came knockin'. I really appreciate you doing this. I'm sure the others do as well…");
array_push(_dialogs, $"This place. After the divorce, I just wanted to get away. I didn't really know what I wanted. Or even who I was. I'd married so young. But this place gave me the space I needed to think it through. I remember seeing the sale sign on Stacked and thinking, it's fate!");
array_push(_dialogs, $" I'll share the link on the store's socials once I get back home. Thanks again. We won't give up our peace quietly!");

pathPaused = false;
prevSpeed = 0;

path_start(path_store, 1,path_action_continue,false);

image_speed = 0.66;