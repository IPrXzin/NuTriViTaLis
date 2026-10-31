tipo = noone;
sendo_arrastado = false;
offset_x = 0;
offset_y = 0;
msg = "";
spd = 1.75;

// para voltar à bandeja
x_origem = x;
y_origem = y;
voltando = false;
reposto = false;   // já criou a reposição na bandeja?   // true só para comidas criadas pela bandeja

switch (room) {
    case rm_fase_1:
        hspeed = spd;
        break;
    case rm_fase_2:
        hspeed = -spd;
        break;
    case rm_fase_3:
        spd = 0;
        hspeed = 0;
        depth = -10;   // fica por cima do prato
        break;
}