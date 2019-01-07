global.questions_p1 = ds_list_create();
global.questions_p2 = ds_list_create();
var a;
var i;
var q = 30;

for (i = 1; i <= q; i++)
{
    var x = irandom(99);
    var y = irandom(99);
    a[0] = ""; //Question
    a[1] = ""; //Choice 1
    a[2] = ""; //Choice 2
    a[3] = ""; //Choice 3
    a[4] = ""; //Choice 4
    a[5] = ""; //Correct Choice
    ds_list_add(global.questions_p1, a);
    ds_list_add(global.questions_p2, a);
    a = 0;
}
