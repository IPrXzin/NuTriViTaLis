

if (position_meeting(mouse_x,mouse_y, id) && mouse_check_button_pressed(mb_left)){

switch(acao){
	
	case "jogar":
		room_goto(rm_fase_1)
		break
	case "colecao":
		room_goto(rm_colecao)
		break
	case "volume":
		//liga/desliga musica
		break
	case "creditos":
		room_goto(rm_creditos)
		break
	case "inicio":
		room_goto(rm_inicio)
		break
		

}

	
}