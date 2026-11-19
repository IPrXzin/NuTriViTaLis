// obj_player, Collision Event com obj_controller_alimento
if (obj_lista_compras.tentar_comprar(other.object_index)) {
    instance_destroy(other);
}