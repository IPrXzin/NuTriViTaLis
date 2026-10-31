itens = [];
raio = sprite_width / 2;
resultado = -1;   // -1 = ainda não serviu, 0 = errou, 1 = acertou
mensagem = "";

// frases sorteadas quando o prato está equilibrado
frases_certo = [
    "Um prato colorido geralmente significa maior variedade de nutrientes.",
    "Parabéns! Seu prato está equilibrado!",
    "Isso aí! Metade de saladas, e cereais e proteínas na medida certa.",
    "Que prato bonito e saudável!"
];

// frases sorteadas quando há poucos alimentos
frases_poucos = [
    "Seu prato ainda está vazio. Coloque mais alimentos!",
    "Falta comida no prato. Que tal adicionar mais itens?"
];

// dica quando a proporção está errada (uma por grupo: saladas, cereais, proteínas)
dicas_falta = [
    "Faltam saladas! Elas devem ocupar metade do prato.",
    "Faltam cereais ou tubérculos, como arroz e batata.",
    "Faltam proteínas, como feijão, carnes ou ovos."
];
dicas_sobra = [
    "Saladas demais! Metade do prato já está ótimo.",
    "Cereais demais! Eles ocupam só um quarto do prato.",
    "Proteínas demais! Elas ocupam só um quarto do prato."
];

servir = function() {
    var _qtd = [0, 0, 0];
    for (var i = 0; i < array_length(itens); i++) {
        _qtd[grupo_do_alimento(itens[i].tipo)]++;
    }
    var _total = array_length(itens);

    if (_total < 4) {
        resultado = 0;
        mensagem = frases_poucos[irandom(array_length(frases_poucos) - 1)];
        return;
    }

    var _alvo = [0.50, 0.25, 0.25];   // saladas, cereais, proteínas
    var _ok = true;
    var _pior = 0;
    var _dif_pior = 0;

    for (var g = 0; g < 3; g++) {
        var _dif = (_qtd[g] / _total) - _alvo[g];
        if (abs(_dif) > 0.15) _ok = false;
        if (abs(_dif) > abs(_dif_pior)) {
            _dif_pior = _dif;
            _pior = g;
        }
    }

    if (_ok) {
        resultado = 1;
        mensagem = frases_certo[irandom(array_length(frases_certo) - 1)];
    } else {
        resultado = 0;
        // dica do grupo que está mais longe do ideal
        mensagem = (_dif_pior < 0) ? dicas_falta[_pior] : dicas_sobra[_pior];
    }
}