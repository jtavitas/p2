global.ans = ds_list_create();
global.a = 0;

a[0] = "Answer 1 to question 1";
a[1] = "Answer 2 to question 1";
a[2] = "Answer 3 to question 1";
a[3] = "Answer 4 to question 1";
ds_list_add(global.ans, a);

global.a = round(random_range(0, 3));

