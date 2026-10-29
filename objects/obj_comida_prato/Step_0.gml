if (arrastando) {
    x = mouse_x;
    y = mouse_y;

    if (mouse_check_button_released(mb_left)) {
        arrastando = false;
        var _dist = point_distance(x, y, obj_prato.x, obj_prato.y);

        if (_dist <= obj_prato.raio && zona_do_prato(x, y) == grupo) {
            array_push(obj_prato.itens, id);
        } else {
            instance_destroy();
        }
    }
}