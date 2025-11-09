/// @description Control de diálogo del padre

// Detectar si el jugador está cerca
if (instance_exists(o_player)) {
    if (point_distance(x, y, o_player.x, o_player.y) < 60) {
        player_near = true;
    } else {
        player_near = false;
    }
}

// 1️⃣ Primer diálogo automático (solo una vez)
if (!dialog_started && player_near && !global.dialog_active) {
    // Inicia automáticamente
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "Bienvenido Elias... Que bueno verte de nuevo por aqui.");
    ds_queue_enqueue(global.list_chat, "Debes revisar la electricidad de la casa, pero ten cuidado...");
    ds_queue_enqueue(global.list_chat, "A veces las luces esconden cosas que no deberían verse.");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
    dialog_started = true;
}

// 2️⃣ Permitir repetir el diálogo si ya ocurrió
if (dialog_started && player_near && !global.dialog_active && keyboard_check_pressed(ord("E"))) {
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "Otra vez por aqui, Elias...");
    ds_queue_enqueue(global.list_chat, "Recuerda: arregla las conexiones con cuidado, no repitas el error del pasado.");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
}
