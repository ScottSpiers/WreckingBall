function Move()
{
	var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

	var len = sqrt(sqr(_hor) + sqr(_ver));
	if(len > 0)
	{
		_hor /= len;
		_ver /= len;
	}

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
		SetPlayerIdle();
	}
}

function StepBack(_x, _y)
{
	switch(sprite_index)
	{
		case spr_Player_Walk_Right:
		{
			x -= _x;
			break;
		}
		case spr_Player_Walk_Left:
		{
			x += _x;
			break;
		}
		case spr_Player_Walk_Down:
		{
			y -= _y;
			break;
		}
		case spr_Player_Walk_Up:
		{
			y += _y;
			break;
		}
	}
	SetPlayerIdle();
}

function SetPlayerIdle()
{
	if (sprite_index == spr_Player_Walk_Right) sprite_index = spr_Player_Idle_Right;
		else if (sprite_index == spr_Player_Walk_Left) sprite_index = spr_Player_Idle_Left;
		else if (sprite_index == spr_Player_Walk_Up) sprite_index = spr_Player_Idle_Up;
		else if (sprite_index == spr_Player_Walk_Down) sprite_index = spr_Player_Idle_Down;
}

function SetIdle(sprRight, sprUp, sprLeft, sprDown, idleRight, idleUp, idleLeft, idleDown)
{
	if (sprite_index == sprRight) sprite_index = idleRight;
		else if (sprite_index == sprLeft) sprite_index = idleLeft;
		else if (sprite_index == sprUp) sprite_index = idleUp;
		else if (sprite_index == sprDown) sprite_index = idleDown;
}

function UpdateDirection(sprRight, sprUp, sprLeft, sprDown)
{
	if(direction >= 0 && direction < 90)
	{
		sprite_index = sprRight;
	}
	else if(direction >= 90 && direction < 180)
	{
		sprite_index = sprUp;
	}
	else if(direction >= 180 && direction < 270)
	{
		sprite_index = sprLeft;
	}
	else if(direction >= 270)
	{
		sprite_index = sprDown;
	}
}

function FacePlayer(sprRight, sprUp, sprLeft, sprDown)
{
	var _x = obj_Player.x - x;
	var _y = obj_Player.y - y;
	
	if(abs(_x) > abs(_y))
	{
		if (_x < 0)
		{
			sprite_index = sprLeft;
		}
		else if (_x > 0)
		{
			sprite_index = sprRight;
		}
		return; //unlikely to be 0
	}
	
	if (_y < 0)
	{
		sprite_index = sprUp;
	}
	else
	{
		sprite_index = sprDown;
	}
		
}

function PausePath()
{
	pathPaused = true;
	prevPos = path_position;
	prevSpeed = path_speed;
	path_speed = 0;
}

function ResumePath()
{
	pathPaused = false;
	path_speed = prevSpeed;
}