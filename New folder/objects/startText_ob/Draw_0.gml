if (position_meeting(mouse_x, mouse_y, startText_ob)) {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_yellow, 1);
} else {
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
}