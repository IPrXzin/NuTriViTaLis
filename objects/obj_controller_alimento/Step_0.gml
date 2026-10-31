// VOLTAR PARA A BANDEJA
if (voltando) {
    x = lerp(x, x_origem, 0.25);
    y = lerp(y, y_origem, 0.25);

    if (point_distance(x, y, x_origem, y_origem) < 2) {
        x = x_origem;
        y = y_origem;
        voltando = false;

        // só some se já houver uma igual esperando na bandeja
        // (acontece com comida que já esteve no prato)
        if (reposto) {
            instance_destroy();
            exit;
        }
    }
}

// PEGAR
if (mouse_check_button_pressed(mb_left) && global.objeto_sendo_arrastado == noone) {
    if (position_meeting(mouse_x, mouse_y, id) && !voltando) {
        global.objeto_sendo_arrastado = id;
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
        hspeed = 0;

        // se já estava no prato, tira da lista
        if (room == rm_fase_3) {
            var _pos = array_get_index(obj_prato.itens, id);
            if (_pos != -1) array_delete(obj_prato.itens, _pos, 1);
        }
    }
}

// ARRASTAR / SOLTAR
if (global.objeto_sendo_arrastado == id) {
    if (mouse_check_button_released(mb_left)) {
        global.objeto_sendo_arrastado = noone;

        if (room == rm_fase_3) {
            var _dist = point_distance(x, y, obj_prato.x, obj_prato.y);
            var _grupo = grupo_do_alimento(tipo);

            if (_dist <= obj_prato.raio && _grupo != -1 && zona_do_prato(x, y) == _grupo) {
                // fica no prato
                array_push(obj_prato.itens, id);

                // primeira vez no prato: repõe uma nova comida na bandeja
                if (!reposto) {
                    reposto = true;
                    instance_create_depth(x_origem, y_origem, depth, object_index);
                }
            } else if (position_meeting(x, y, obj_bandeja)) {
                // soltou dentro da bandeja: fica onde foi solto
                x_origem = x;
                y_origem = y;
            } else {
                // soltou fora da bandeja e do prato: volta para a bandeja
                voltando = true;
            }
        } else {
            var _portal = instance_place(x, y, obj_portal_pai);
            if (_portal != noone) {
                if (_portal.tipo == tipo) {
                    show_debug_message("certo");
                    msg = "certo";
                } else {
                    show_debug_message("errado");
                    msg = "errado";
                }
            }
        }
    } else {
        x = mouse_x + offset_x;
        y = mouse_y + offset_y;
    }
}

// SAIU DA TELA
if (x > room_width + 50 || x < -50) {
    if (global.objeto_sendo_arrastado == id) {
        global.objeto_sendo_arrastado = noone;
    }
    instance_destroy();
}