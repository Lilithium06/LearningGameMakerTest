/// @description Insert description here
// You can write your code in this editor

moveSpeed = 0.5;

StateFree = function()
{
	direction = point_direction(x, y, obj_Player.x, obj_Player.y);
	speed = moveSpeed;
}

state = StateFree;