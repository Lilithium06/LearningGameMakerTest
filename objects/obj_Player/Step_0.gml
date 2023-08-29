// Step Event code for the moving object

// Check for keyboard input (WASD and arrow keys)
var moveX = 0;
var moveY = 0;

if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
    moveX += 1;
}
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
    moveX -= 1;
}
if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
    moveY += 1;
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
    moveY -= 1;
}

// Check for controller input (analog stick)
if (gamepad_is_connected(0)) {
    var axisX = gamepad_axis_value(0, gp_axislh);
    var axisY = gamepad_axis_value(0, gp_axislv);

    // Adjust sensitivity (optional, adjust as needed)
    var sensitivity = 0.5;
    if (abs(axisX) > sensitivity) {
        moveX += axisX;
    }
    if (abs(axisY) > sensitivity) {
        moveY += axisY;
    }
}

// Normalize the movement vector to keep diagonal movement at the same speed
var moveLength = point_distance(0, 0, moveX, moveY);
if (moveLength != 0) {
    moveX /= moveLength;
    moveY /= moveLength;
}

// Move the object
x += moveX * moveSpeed;
y += moveY * moveSpeed;