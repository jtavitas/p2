var choices = ds_list_create();
var e;
var a;
var b;
var c;
var i;
var q = argument1;
var h = argument2;
var displayText = "";

for (i = 1; i <= q; i++)
{
    switch(h)
    {
        case 1:
        a = irandom(10);
        b = irandom(10);
        if ((a - b) >= 0) c = a - b;
        else
        {
            a = irandom_range(5, 10);
            b = irandom(5);
            c = a - b;
        }
        break;
        
        case 2:
        a = irandom(50);
        b = irandom(50);
        if ((a - b) >= 0) c = a - b;
        else
        {
            a = irandom_range(25, 50);
            b = irandom(25);
            c = a - b;
        }
        break;
        
        case 3:
        a = irandom(100);
        b = irandom(100);
        if ((a - b) >= 0) c = a - b;
        else
        {
            a = irandom_range(50, 100);
            b = irandom(50);
            c = a - b;
        }
        break;
    }
    
    displayText = a;
    displayText = string_insert(" - ", displayText, string_length(displayText)+1);
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
