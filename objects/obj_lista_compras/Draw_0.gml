// Draw Event
var _esq = x - padding;
var _topo = y - padding;
var _dir = x + largura;
var _base = y + 30 + (max(total_itens, 1) - 1) * espacamento + tamanho_icone + padding;

draw_set_color(c_white);
draw_roundrect_ext(_esq, _topo, _dir, _base, 16, 16, false);
draw_set_color(c_gray);
draw_roundrect_ext(_esq, _topo, _dir, _base, 16, 16, true);

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x, y, "compras:");

for (var i = 0; i < array_length(lista); i++) {
    var _objeto = lista[i];
    var _linha_y = y + 30 + (i * espacamento);

    var _spr = object_get_sprite(_objeto);
    if (_spr != -1) {
        var _esc = tamanho_icone / max(sprite_get_width(_spr), sprite_get_height(_spr));
        draw_sprite_ext(
            _spr, 0,
            x + sprite_get_xoffset(_spr) * _esc,
            _linha_y + sprite_get_yoffset(_spr) * _esc,
            _esc, _esc, 0, c_white, 1
        );
    }

        // posição e texto do nome
    var _texto_x = x + tamanho_icone + 10;
    var _texto_y = _linha_y + tamanho_icone / 2;
    var _nome = nome_do_alimento(_objeto);

    // verde se já foi coletado, preto se ainda falta
    draw_set_color(coletados[i] ? c_green : c_black);
    draw_set_valign(fa_middle);
    draw_text(_texto_x, _texto_y, _nome);

    // rasura: linha por cima do texto quando coletado
    if (coletados[i]) {
        draw_line_width(_texto_x, _texto_y, _texto_x + string_width(_nome), _texto_y, 2);
    }

    draw_set_valign(fa_top);
}

draw_set_color(c_white);