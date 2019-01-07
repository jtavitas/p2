draw_set_halign(fa_center);
draw_set_valign(fa_middle);

displayText = string_insert("_", inputText, cursorPos);

var xx = room_width - (room_width/2.5) - 110;
var yy = room_height - (room_height/2);
var c = c_black;
var offset = 2;

//Text Border Outline
draw_text_transformed_colour(xx - offset, yy, string_upper(displayText), 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx + offset, yy, string_upper(displayText), 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy - offset, string_upper(displayText), 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy + offset, string_upper(displayText), 1, 1, 0, c,c,c,c,1.0);

//Displayed text
c = c_lime;
draw_text_transformed_colour(xx, yy, string_upper(displayText), 1, 1, 0, c,c,c,c,1.0);


//New Text
draw_set_halign(fa_left);
displayText = "Type your initials:";
xx = room_width/5;
c = c_black;

//Text Border Outline
draw_text_transformed_colour(xx - offset, yy, displayText, 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx + offset, yy, displayText, 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy - offset, displayText, 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy + offset, displayText, 1, 1, 0, c,c,c,c,1.0);

//Displayed text
c = c_lime;
draw_text_transformed_colour(xx, yy, displayText, 1, 1, 0, c,c,c,c,1.0);


//New Text
draw_set_halign(fa_left);
displayText = string_insert(" seconds", global.timer_record, string_length(global.timer_record)+1);
xx = room_width - (room_width/2.5);
c = c_black;

//Text Border Outline
draw_text_transformed_colour(xx - offset, yy, displayText, 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx + offset, yy, displayText, 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy - offset, displayText, 1, 1, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy + offset, displayText, 1, 1, 0, c,c,c,c,1.0);

//Displayed text
c = c_lime;
draw_text_transformed_colour(xx, yy, displayText, 1, 1, 0, c,c,c,c,1.0);
