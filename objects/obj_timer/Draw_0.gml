// obj_timer, Draw Event
draw_self(); // desenha o sprite do objeto (ex: um ícone de relógio)

var _total = ceil(tempo);
var _min = _total div 60;
var _seg = _total mod 60;
var _texto = string(_min) + ":" + (_seg < 10 ? "0" : "") + string(_seg);

var _borda_direita = x - sprite_xoffset + sprite_width;
var _meio_y = y - sprite_yoffset + sprite_height / 2;

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(_borda_direita + 10, _meio_y, _texto);
draw_set_valign(fa_top); // devolve ao padrão