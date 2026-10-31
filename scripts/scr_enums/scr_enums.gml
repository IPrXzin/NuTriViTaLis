enum tipoAlimento {
    carne,
    fruta,
    legume_verdura,
    cereais_tuberculos,
    leguminosa          // feijão, lentilha, grão-de-bico
}

enum GRUPO_PRATO {
    SALADAS,
    CEREAIS,
    PROTEINAS
}

function grupo_do_alimento(_tipo) {
    switch (_tipo) {
        case tipoAlimento.legume_verdura:      return GRUPO_PRATO.SALADAS;
        case tipoAlimento.cereais_tuberculos:  return GRUPO_PRATO.CEREAIS;
        case tipoAlimento.carne:               return GRUPO_PRATO.PROTEINAS;
        case tipoAlimento.leguminosa:          return GRUPO_PRATO.PROTEINAS;
    }
    return -1;   // não entra no prato (ex.: fruta)
}

function draw_fatia(_cx, _cy, _r, _ang_ini, _ang_fim, _cor, _alpha) {
    draw_set_alpha(_alpha);
    draw_set_color(_cor);
    draw_primitive_begin(pr_trianglefan);
    draw_vertex(_cx, _cy);
    for (var a = _ang_ini; a <= _ang_fim; a += 5) {
        draw_vertex(_cx + lengthdir_x(_r, a), _cy + lengthdir_y(_r, a));
    }
    draw_primitive_end();
    draw_set_alpha(1);
    draw_set_color(c_white);
}