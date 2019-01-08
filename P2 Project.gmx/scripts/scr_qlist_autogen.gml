if (argument0 == 1) global.questions_p1 = ds_list_create();
if (argument0 == 2) global.questions_p2 = ds_list_create();
var a;
var i;
var q = 30;
var displayText = "";

for (i = 1; i <= q; i++)
{
    var aa = irandom(10);
    var bb = irandom(10);
    var e = aa + bb;
    
    displayText = aa;
    displayText = string_insert(" + ", displayText, string_length(displayText)+1);
    displayText = string_insert(bb, displayText, string_length(displayText)+1);
    displayText = string_insert(" = ?", displayText, string_length(displayText)+1);
    
    a[0] = displayText; //Question
    
    //Method of shuffling answers goes here
     
    a[1] = e; //Choice 1
    a[2] = scr_qlist_ans(e); //Choice 2
    a[3] = scr_qlist_ans(e); //Choice 3
    a[4] = scr_qlist_ans(e); //Choice 4
    
    a[5] = e; //Correct Choice
    if (argument0 == 1) ds_list_add(global.questions_p1, a);
    if (argument0 == 2) ds_list_add(global.questions_p2, a);
    a = 0;
}
