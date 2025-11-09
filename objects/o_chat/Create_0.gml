/// @description Create Event del o_chat (bloqueo completo del jugador)

// Pausar movimiento del jugador
if (instance_exists(o_player)) {
    // Guardar su velocidad actual y detenerlo
    o_player.hspeed = 0;
    o_player.vspeed = 0;
    o_player.can_move = false;
    o_player.puzzle_active = true; // evitar otras acciones (si usas esta variable)
}

// Cargar el primer texto del diálogo
if (!ds_queue_empty(global.list_chat)) {
    chat = ds_queue_head(global.list_chat);
    ds_queue_dequeue(global.list_chat);
} else {
    chat = "No hay texto para mostrar.";
}
