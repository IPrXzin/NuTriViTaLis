// Create Event
vidas_max = 3;
vidas = vidas_max;
ao_zerar = function() {};   // cada fase define o que acontece quando as vidas acabarem

perder_vida = function() {
    if (vidas <= 0) return;
    vidas -= 1;
    
    if (vidas <= 0) {
        ao_zerar();
    }
};