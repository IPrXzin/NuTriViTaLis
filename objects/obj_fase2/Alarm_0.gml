
var _alimentos = choose(obj_batata,
	obj_morango,
	obj_laranja,
	obj_bife,
	obj_cenoura,
	obj_alface,
	obj_alho,
	obj_banana,
	obj_beterraba,
	obj_tomate,
	obj_batata_frita,
	obj_cachorro_quente,
	obj_ovo,
	obj_pimentaoV,
	obj_refrigerante,
	obj_queijo 
	)

var _y = choose(290,410,530)

instance_create_layer(room_width+50, _y, "fase2", _alimentos)

alarm[0] = 30