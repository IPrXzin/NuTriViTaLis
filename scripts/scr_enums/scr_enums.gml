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