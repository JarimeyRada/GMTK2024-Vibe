// @description Movement/Collision
// checks if left or right are pressed
move_x = keyboard_check(vk_right) -  keyboard_check(vk_left);
// sets x movement equal to the variable movespeed from the create object 
move_x = move_x * movespeed;

// checks collision w/ the ground, will need to make 
// parent behavior for all terrain types
if place_meeting(x, y+2, Ground){
	move_y = 0;
	if keyboard_check(vk_space) move_y = -jumpspeed;
}
	else if move_y < 50{
		move_y += 1;
	}
	
move_and_collide(move_x, move_y, Ground);
if move_x != 0 {
	image_xscale = sign(move_x)
}
	

// You can write your code in this editor
