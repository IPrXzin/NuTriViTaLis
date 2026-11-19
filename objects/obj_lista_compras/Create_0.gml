// Create Event
qtd_itens = 5;
tamanho_icone = 32;
espacamento = 40;
largura = 240;
padding = 12;
total_itens = 0;
listas_completas = 0;                 // quantas listas o jogador já terminou
possiveis = global.todos_alimentos;

lista = [];
coletados = [];

// sorteia uma lista nova (sem repetir itens)
gerar_lista = function() {
    lista = [];
    coletados = [];

    var _pool = [];
    array_copy(_pool, 0, possiveis, 0, array_length(possiveis));

    var _qtd = min(qtd_itens, array_length(_pool));

    for (var i = 0; i < _qtd; i++) {
        var _indice = irandom(array_length(_pool) - 1);
        array_push(lista, _pool[_indice]);
        array_push(coletados, false);
        array_delete(_pool, _indice, 1);
    }

    total_itens = _qtd;
};

tentar_comprar = function(_objeto) {
    var _pos = array_get_index(lista, _objeto);
    if (_pos == -1) return false;
    if (coletados[_pos]) return false;
    coletados[_pos] = true;
    return true;
};

lista_completa = function() {
    if (array_length(coletados) == 0) return false;
    for (var i = 0; i < array_length(coletados); i++) {
        if (!coletados[i]) return false;
    }
    return true;
};