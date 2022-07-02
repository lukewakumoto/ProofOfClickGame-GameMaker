/// @description Insert description here
// You can write your code in this editor


// check if the mouse is in the "hitbox" of the button
if (point_in_rectangle(mouse_x,mouse_y,
x - button_width/2, y - button_height/2, x + button_width/2, y + button_height/2)){
	
	if (!hovering){
		if (onHover != noone) onHover()	
	}
	
	hovering = true
	window_set_cursor(cr_handpoint)
} else{
	if (hovering){ // if the button was previously being hovered over, we know it's been exited
		hovering = false
		
		if (onHoverLeave != noone) onHoverLeave()
		window_set_cursor(cr_default)
		
	}
}

if (mouse_check_button_released(mb_left) && hovering){
	if (onClick != noone) onClick()	
}