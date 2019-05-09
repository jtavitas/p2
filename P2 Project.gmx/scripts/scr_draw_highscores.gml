draw_set_halign(fa_left);
draw_set_valign(fa_middle);

displayText = string_upper(inputText);
displayText = string_insert("           ", displayText, string_length(displayText)+1);
displayText = string_insert(global.timer_record, displayText, string_length(displayText)+1);
displayText = string_insert(" seconds", displayText, string_length(displayText)+1);

var xx = room_width/3;
var yy = room_height - (room_height/8);
var c = c_black;
var offset = 2;
var tS = 0.75;

//Text Border Outline
draw_text_transformed_colour(xx - offset, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx + offset, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy - offset, displayText, tS, tS, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy + offset, displayText, tS, tS, 0, c,c,c,c,1.0);

//Displayed text
c = c_lime;
draw_text_transformed_colour(xx, yy, displayText, tS, tS, 0, c,c,c,c,1.0);


var i;
var iy = 60;
i = 9;

repeat(10)
{
    ini_open(global.score_table);
    var a = ini_read_real(i, 'time', '0.00');
    var b = ini_read_string(i, 'name', 'NO1');
    ini_close();
    ii = i+1;
    displayText = string_insert(ii, ".  ", 0);
    displayText = string_insert(b, displayText, string_length(displayText)+1);
    displayText = string_insert("           ", displayText, string_length(displayText)+1);
    displayText = string_insert(a, displayText, string_length(displayText)+1);
    displayText = string_insert(" seconds", displayText, string_length(displayText)+1);
    yy -= iy;
    
    //Text Border Outline
    c = c_black;
    draw_text_transformed_colour(xx - offset, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
    draw_text_transformed_colour(xx + offset, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
    draw_text_transformed_colour(xx, yy - offset, displayText, tS, tS, 0, c,c,c,c,1.0);
    draw_text_transformed_colour(xx, yy + offset, displayText, tS, tS, 0, c,c,c,c,1.0);

    //Displayed text
    c = c_orange;
    draw_text_transformed_colour(xx, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
    
    i -= 1;
}

displayText = "Press ENTER to race again!";
c = c_black;
yy = room_height - 45;
draw_text_transformed_colour(xx - offset, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx + offset, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy - offset, displayText, tS, tS, 0, c,c,c,c,1.0);
draw_text_transformed_colour(xx, yy + offset, displayText, tS, tS, 0, c,c,c,c,1.0);
c = c_aqua;
draw_text_transformed_colour(xx, yy, displayText, tS, tS, 0, c,c,c,c,1.0);
