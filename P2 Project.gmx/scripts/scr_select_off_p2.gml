obj_ans1_p2.can_select = false;
obj_ans2_p2.can_select = false;
obj_ans3_p2.can_select = false;
obj_ans4_p2.can_select = false;

if (correct) obj_red_mini.hspeed += 0.2;
else if (!correct) obj_red_mini.hspeed -= 0.2;

obj_red_mini.alarm[0] = 0;
