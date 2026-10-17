
// No objeto arrastável
if (mouse_check_button_pressed(mb_left) && global.objeto_sendo_arrastado == noone){
    if (position_meeting(mouse_x, mouse_y, id)) {
        global.objeto_sendo_arrastado = id;
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
		hspeed = 0
    }
}

if (global.objeto_sendo_arrastado == id) {
    if (mouse_check_button_released(mb_left)) {
        global.objeto_sendo_arrastado = noone;
		
		var _portal = instance_place(x,y,obj_portal_pai)
		
		if(_portal != noone)
		
			if(_portal.tipo == tipo){
				show_debug_message("certo")
				msg = "certo"
			}else{
				show_debug_message("errado")
				msg = "errado"
			}
		
    } else {
        x = mouse_x + offset_x;
        y = mouse_y + offset_y;
		
    }
}



if(x > room_width + 50){
	
	if(global.objeto_sendo_arrastado == id){
		global.objeto_sendo_arrastado = noone
	}
	instance_destroy()
}