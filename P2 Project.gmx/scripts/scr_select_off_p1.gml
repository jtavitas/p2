obj_ans1_p1.can_select = false;
obj_ans2_p1.can_select = false;
obj_ans3_p1.can_select = false;
obj_ans4_p1.can_select = false;

if (correct)
{
    var snd = audio_play_sound(car_rev,5,0);
    audio_sound_gain(snd, 0.5, 0);
    obj_blue_mini.hspeed += global.base_spd;
}
else if (!correct)
{
    if (global.p1_can_brake)
    {
        global.p1_can_brake = false;
        var snd = audio_play_sound(car_brake,5,0);
        audio_sound_gain(snd, 0.4, 0);
    }
    obj_blue_mini.hspeed -= global.base_spd;
}

obj_blue_mini.alarm[0] = 0;
