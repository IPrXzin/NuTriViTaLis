
var _alimentos = choose(obj_batata,
	obj_morango,
	obj_laranja,
	obj_bife,
	obj_cenoura,
	obj_alface,
	obj_alho,
	obj_banana,
	obj_beterraba,
	obj_tomate
	)

var _y = choose(200,362,520)

instance_create_layer(room_width+50, _y, "fase2", _alimentos)

alarm[0] = 7