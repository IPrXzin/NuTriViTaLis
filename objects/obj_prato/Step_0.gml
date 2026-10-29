if (keyboard_check_pressed(vk_enter)) {
    var _qtd = [0, 0, 0];
    for (var i = 0; i < array_length(itens); i++) {
        _qtd[grupo_do_alimento(itens[i].tipo)]++;
    }
    var _total = array_length(itens);
    var _alvo = [0.50, 0.25, 0.25];   // saladas, cereais, proteínas
    var _ok = (_total >= 4);

    for (var g = 0; g < 3; g++) {
        var _pct = (_total > 0) ? _qtd[g] / _total : 0;
        if (abs(_pct - _alvo[g]) > 0.15) _ok = false;
    }
    resultado = _ok ? 1 : 0;
}