// obj_vida, Draw Event
draw_self();

var _texto = string(vidas) + "/" + string(vidas_max);

var _borda_direita = x - sprite_xoffset + sprite_width;
var _meio_y = y - sprite_yoffset + sprite_height / 2;

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(_borda_direita + 10, _meio_y, _texto);
draw_set_valign(fa_top);