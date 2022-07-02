/// @description Insert description here
// You can write your code in this editor

children_color = hovering ? c_white : c_grey
children_alpha = hovering ? 1 : 0.8

draw_sprite_ext(spr_button_1,0,x,y,
button_width/sprite_get_width(spr_button_1),button_height/sprite_get_height(spr_button_1),0,children_color,children_alpha)

if (buttonImage != noone){
	buttonScale = sprite_get_width(buttonImage)/(button_height)
	draw_sprite_ext(buttonImage,0,x - button_width/2 + padding_horizontal,
	y - button_height/2 + padding_vertical,buttonScale,buttonScale,0,children_color,children_alpha)
}


draw_set_valign(fa_top)
draw_set_halign(fa_right)
draw_text_transformed_color(x + button_width/2 - padding_horizontal,
					  y - button_height/2 + padding_vertical,buttonText,1,1,0,
					  children_color,children_color,children_color,children_color,children_alpha)

draw_set_valign(fa_center)

draw_set_valign(fa_bottom)
draw_text_transformed_color(x + button_width/2 - padding_horizontal,
					  y + padding_vertical/2,"Owned: " + string(numberOwned),1,1,0,
					  children_color,children_color,children_color,children_color,children_alpha)

draw_set_valign(fa_bottom)
draw_text_transformed_color(x + button_width/2 - padding_horizontal,
					  y + button_height/2 - padding_vertical,"Cost: " + string(buttonCost),1,1,0,
					  children_color,children_color,children_color,children_color,children_alpha)

draw_set_halign(fa_left)
draw_set_valign(fa_top)