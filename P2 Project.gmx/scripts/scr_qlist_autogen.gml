if (argument0 == 1) global.questions_p1 = ds_list_create();
if (argument0 == 2) global.questions_p2 = ds_list_create();

var choices = ds_list_create();
var e;
var a;
var b;
var c;
var i;
var q = 35;
var displayText = "";

for (i = 1; i <= q; i++)
{
    a = irandom(10);
    b = irandom(10);
    c = a + b;
    
    displayText = a;
    displayText = string_insert(" + ", displayText, string_length(displayText)+1);
    displayText = string_insert(b, displayText, string_length(displayText)+1);
    displayText = string_insert(" = ?", displayText, string_length(displayText)+1);
    
    e[0] = displayText; //Question
    
    //Method of shuffling answers goes here
    ds_list_add(choices, c);
    ds_list_add(choices, scr_qlist_ans(c));
    ds_list_add(choices, scr_qlist_ans(c));
    ds_list_add(choices, scr_qlist_ans(c));
    
    ds_list_shuffle(choices);
    e[1] = ds_list_find_value(choices, 0); //Choice 1
    e[2] = ds_list_find_value(choices, 1); //Choice 2
    e[3] = ds_list_find_value(choices, 2); //Choice 3
    e[4] = ds_list_find_value(choices, 3); //Choice 4
    ds_list_clear(choices);
    
    e[5] = c; //Correct Choice
    if (argument0 == 1) ds_list_add(global.questions_p1, e);
    if (argument0 == 2) ds_list_add(global.questions_p2, e);
    e = 0; c = 0; a = 0; b = 0; displayText = "";
}

ds_list_destroy(choices);
