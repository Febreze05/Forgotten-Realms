// --- Zoom In/Out ---
if (keyboard_check(vk_up)) {
    zoom_level -= zoom_speed; // zoom in
    Font_level += zoom_speed;
}
if (keyboard_check(vk_down)) {
    zoom_level += zoom_speed; // zoom out
    Font_level -= zoom_speed;
}

// --- Reset Zoom ---
if (keyboard_check_pressed(vk_left)) {
    zoom_level = 1.0; // normal zoom
    Font_level = 1.0;
}

// Clamp zoom
zoom_level = clamp(zoom_level, min_zoom, max_zoom);

// --- Mouse-Centric Camera Zoom ---
var cam_w_old = camera_get_view_width(cam);
var cam_h_old = camera_get_view_height(cam);
var cam_x_old = camera_get_view_x(cam);
var cam_y_old = camera_get_view_y(cam);

// Convert mouse screen position to world coordinates (current camera)
var mouse_x_world = cam_x_old + (mouse_x / view_wport[0]) * cam_w_old;
var mouse_y_world = cam_y_old + (mouse_y / view_hport[0]) * cam_h_old;

// Compute new camera size based on zoom
var new_w = base_width * zoom_level;
var new_h = base_height * zoom_level;

// Adjust camera position so the mouse stays at the same world position
var new_x = mouse_x_world - (mouse_x / view_wport[0]) * new_w;
var new_y = mouse_y_world - (mouse_y / view_hport[0]) * new_h;

// Clamp camera to room bounds
new_x = clamp(new_x, 0, room_width - new_w);
new_y = clamp(new_y, 0, room_height - new_h);

// Apply camera
camera_set_view_size(cam, new_w, new_h);
camera_set_view_pos(cam, new_x, new_y);
view_camera[0] = cam;

