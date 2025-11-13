if (caption_timer > 0) {
    caption_timer -= 1;
    
    // Start fading out near the end of the timer
    if (caption_timer < room_speed * 0.5) {
        caption_alpha = caption_timer / (room_speed * 0.5);
    } else {
        caption_alpha = 1;
    }
    
    if (caption_timer <= 0) {
        caption_text = "";
    }
}
