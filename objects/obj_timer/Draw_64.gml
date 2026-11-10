// Draw GUI Event
var _total = ceil(tempo);
var _min = _total div 60;
var _seg = _total mod 60;
var _texto = string(_min) + ":" + (_seg < 10 ? "0" : "") + string(_seg);

draw_text(20, 20, _texto);