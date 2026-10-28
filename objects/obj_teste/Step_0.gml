// Step event do obj_teste
if (keyboard_check_pressed(vk_space)) {
    if (room == rm_fase_1) {
        room_goto(rm_fase_2);
    } else {
        room_goto(rm_fase_1);
    }
}