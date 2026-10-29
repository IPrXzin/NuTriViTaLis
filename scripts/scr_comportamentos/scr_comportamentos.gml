function zona_do_prato(_x, _y) {
    var _ang = point_direction(obj_prato.x, obj_prato.y, _x, _y);
    if (_ang < 180) return GRUPO_PRATO.SALADAS;
    if (_ang < 270) return GRUPO_PRATO.CEREAIS;
    return GRUPO_PRATO.PROTEINAS;
}