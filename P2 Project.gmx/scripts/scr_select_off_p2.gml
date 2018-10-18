obj_ans1_p2.can_select = false;
obj_ans2_p2.can_select = false;
obj_ans3_p2.can_select = false;
obj_ans4_p2.can_select = false;

if (correct)
{
    var snd = audio_play_sound(car_rev,5,0);
    audio_sound_gain(snd, 0.5, 0);
    obj_red_mini.hspeed += global.base_spd;
}
else if (!correct)
{
    if (global.p2_can_brake)
    {
        global.p2_can_brake = false;
        var snd = audio_play_sound(car_brake,5,0);
        audio_sound_gain(snd, 0.4, 0);
        red_car.brake = true;
    }
    obj_red_mini.hspeed -= global.base_spd/10;
}

obj_red_mini.alarm[0] = 0;
