if (keyboard_check_pressed(vk_space)) {
    var _prox = room_next(room);   // devolve -1 se não houver próxima
    if (_prox != -1) room_goto(_prox);
    else room_goto(rm_fase_1);
}