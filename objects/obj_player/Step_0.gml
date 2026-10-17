

if (keyboard_check_pressed(ord("W"))){
	linha_atual = max(0, linha_atual -1)
}

if (keyboard_check_pressed(ord("S"))){
	linha_atual = min(array_length(global.linhas_y) - 1, linha_atual + 1)
}

var _alvo_y = global.linhas_y[linha_atual];
y = lerp(y, _alvo_y, 0.25);

if (abs(y - _alvo_y) < 1) {
    y = _alvo_y; // "encaixa" quando chega perto
}
show_debug_message(linha_atual)