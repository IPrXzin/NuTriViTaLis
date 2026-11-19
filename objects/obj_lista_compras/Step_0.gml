// Step Event
// quando todos os itens forem coletados, agenda uma lista nova
if (lista_completa() && alarm[0] == -1) {
    alarm[0] = room_speed * 0.8;   // espera 0,8s pro jogador ver o último item riscado
}