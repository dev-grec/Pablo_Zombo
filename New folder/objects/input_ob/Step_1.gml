global.upKey = keyboard_check(ord("W")) ||  keyboard_check(vk_up);
global.downKey = keyboard_check(ord("S")) || keyboard_check(vk_down);
global.leftKey = keyboard_check(ord("A")) ||  keyboard_check(vk_left);
global.rightKey = keyboard_check(ord("D")) ||  keyboard_check(vk_right);
global.shootKey = mouse_check_button(mb_left);
global.swapKey = mouse_check_button_pressed(mb_right);