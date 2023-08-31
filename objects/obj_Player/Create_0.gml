/// @description Insert description here
// You can write your code in this editor

moveSpeed = 1;

//Free State
stateFree =	function()
{
	// Check for keyboard input (WASD and arrow keys)
var moveX = 0;
var moveY = 0;

if (keyboard_check(ord("D"))) {
    moveX += 1;
}
if (keyboard_check(ord("A"))) {
    moveX -= 1;
}
if (keyboard_check(ord("S"))) {
    moveY += 1;
}
if (keyboard_check(ord("W"))) {
    moveY -= 1;
}

changeAnimation(moveX, moveY);

// Normalize the movement vector to keep diagonal movement at the same speed
var moveLength = point_distance(0, 0, moveX, moveY);
if (moveLength != 0) {
    moveX /= moveLength;
    moveY /= moveLength;
}

// Move the object
x += moveX * moveSpeed;
y += moveY * moveSpeed;
}

stateAttack = function() 
{
	
}

//starts on free state
state = stateFree;

//animation changing
changeAnimation = function(moveX, moveY) {
	if (moveX == 1 && moveY == 0) {
		sprite_index = spr_YoumuRight;
	}
	else if (moveX == -1 && moveY == 0) {
		sprite_index = spr_YoumuLeft;
	}
	else if (moveY == 1 && moveX == 0) {
		sprite_index = spr_YoumuDown;
	}
	else if (moveY == 1 && moveX == 1) {
		sprite_index = spr_YoumuDownRight;
	}
	else if (moveY == 1 && moveX == -1) {
		sprite_index = spr_YoumuDownLeft;
	}
	else if (moveY == -1 && moveX == 0) {
		sprite_index = spr_YoumuUp;
	}
	else if (moveX == -1 && moveY == -1) {
		sprite_index = spr_YoumuUpLeft;	
	}
	else if (moveX == 1 && moveY == -1) {
		sprite_index = spr_YoumuUpRight;	
	}
	else {
		sprite_index = spr_YoumuIdle;	
	}
}