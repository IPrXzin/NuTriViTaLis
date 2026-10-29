if (mouse_check_button_pressed(mb_left) && global.objeto_sendo_arrastado == noone
    && position_meeting(mouse_x, mouse_y, id)) {
    if (comida != noone) {
        var _c = instance_create_layer(mouse_x, mouse_y, "Instances", comida);
        _c.x_origem = x;
        _c.y_origem = y;
        _c.copia = true;
        global.objeto_sendo_arrastado = _c;
    } else {
        show_debug_message("Bandeja sem comida definida: " + string(id));
    }
}