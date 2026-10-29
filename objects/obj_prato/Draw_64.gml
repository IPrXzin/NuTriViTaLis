draw_set_halign(1)

draw_set_color(c_black);
if (resultado == 1) {
    draw_text(20, 20, "Um prato colorido geralmente significa maior variedade de nutrientes.");
} else if (resultado == 0) {
    draw_text(20, 20, "Quase lá! Lembre: 1/2 saladas, 1/4 cereais, 1/4 proteínas.");
}
draw_set_color(c_white);