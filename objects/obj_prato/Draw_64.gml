if (resultado != -1) {
    var _cx = display_get_gui_width() / 2;
    var _cy = display_get_gui_height() / 2;
    var _larg = display_get_gui_width() * 0.7;                 // largura máxima do texto
    var _alt = string_height_ext(mensagem, -1, _larg) + 40;    // altura da caixa

    // fundo para o texto ficar legível
    draw_set_alpha(0.85);
    draw_set_color(c_white);
    draw_rectangle(_cx - _larg / 2 - 20, _cy - _alt / 2, _cx + _larg / 2 + 20, _cy + _alt / 2, false);
    draw_set_alpha(1);

    // texto centralizado, com quebra de linha automática
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text_ext(_cx, _cy, mensagem, -1, _larg);

    // volta ao padrão
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}