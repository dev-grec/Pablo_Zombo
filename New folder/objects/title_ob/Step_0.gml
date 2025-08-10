if (collision_point(mouse_x, mouse_y, startText_ob, false, false)) {
    if (mouse_check_button_pressed(mb_left)) {
        room_goto(end_rm);
    }
}
if (collision_point(mouse_x, mouse_y, exitText_ob, false, false)) {
    if (mouse_check_button_pressed(mb_left)) {
        game_end();
    }
}