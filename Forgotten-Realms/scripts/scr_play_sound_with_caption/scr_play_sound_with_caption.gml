// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_play_sound_with_caption(_sound, _text, _duration)
{
audio_play_sound(_sound, 1, false);

    if (instance_exists(O_Captioncontroller)) {
        var controller = instance_find(O_Captioncontroller, 0);
        controller.caption_text = _text;
        controller.caption_timer = room_speed * _duration; // duration in seconds
}
}