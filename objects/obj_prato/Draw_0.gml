draw_self();

// qual fatia destacar: a do alimento que está sendo arrastado
var _destaque = -1;
if (global.objeto_sendo_arrastado != noone && instance_exists(global.objeto_sendo_arrastado)) {
    _destaque = grupo_do_alimento(global.objeto_sendo_arrastado.tipo);
}

var _a_saladas   = (_destaque == GRUPO_PRATO.SALADAS)   ? 0.65 : 0.35;
var _a_cereais   = (_destaque == GRUPO_PRATO.CEREAIS)   ? 0.65 : 0.35;
var _a_proteinas = (_destaque == GRUPO_PRATO.PROTEINAS) ? 0.65 : 0.35;

// fatias (verde, amarelo, salmão, como na imagem de referência)
draw_fatia(x, y, raio, 0,   180, make_color_rgb(120, 200, 120), _a_saladas);
draw_fatia(x, y, raio, 180, 270, make_color_rgb(250, 210, 90),  _a_cereais);
draw_fatia(x, y, raio, 270, 360, make_color_rgb(240, 130, 110), _a_proteinas);

// divisórias
draw_set_color(c_white);
draw_line_width(x - raio, y, x + raio, y, 3);
draw_line_width(x, y, x, y + raio, 3);

// volta ao padrão
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);