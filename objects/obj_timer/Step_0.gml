// Step Event
if (!ativo) exit;

tempo -= delta_time / 1000000;

if (tempo <= 0) {
    tempo = 0;
    ativo = false;
    acabou = true;
    ao_acabar();
}