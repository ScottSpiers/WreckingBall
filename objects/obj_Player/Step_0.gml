var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor * move_speed, _ver * move_speed, tilemap, undefined, undefined, undefined, move_speed, move_speed);

if (_hor != 0 or _ver != 0) 
{
	if (_ver >0) sprite_index = spr_Player_Walk_Down;
    else if (_ver < 0) sprite_index = spr_Player_Walk_Up;
    else if (_hor > 0) sprite_index = spr_Player_Walk_Right;
    else if (_hor < 0) sprite_index = spr_Player_Walk_Left;
}
else 
{
	if (sprite_index == spr_Player_Walk_Right) sprite_index = spr_Player_Idle_Right;
    else if (sprite_index == spr_Player_Walk_Left) sprite_index = spr_Player_Idle_Left;
    else if (sprite_index == spr_Player_Walk_Up) sprite_index = spr_Player_Idle_Up;
    else if (sprite_index == spr_Player_Walk_Down) sprite_index = spr_Player_Idle_Down;
}