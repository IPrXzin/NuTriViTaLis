
global.todos_alimentos = [
    obj_batata,
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
]


global.linhas_y = [290,410,530]


global.objeto_sendo_arrastado = noone;

function nome_do_alimento(_objeto) {
    switch (_objeto) {
        case obj_batata: return "Batata";
        case obj_bife: return "Bife";
        case obj_batata_frita: return "Batata frita";
        case obj_alface: return "Alface";
        case obj_alho: return "Alho";
		case obj_banana: return "Banana";
		case obj_beterraba: return "Beterraba";
		case obj_cachorro_quente: return "Cachorro quente";
		case obj_cenoura: return "Cenoura";
		case obj_laranja: return "Laranja";
		case obj_morango: return "Morango";
		case obj_ovo: return "Ovo";
		case obj_pimentaoV: return "Pimentão";
		case obj_queijo: return "Queijo";
		case obj_refrigerante: return "Refrigerante";
		case obj_tomate: return "Tomate";		
    }
    return "???";
}