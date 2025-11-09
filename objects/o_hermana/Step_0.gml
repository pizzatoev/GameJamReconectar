/// @description Control de diálogo de la hermana

// Detectar si el jugador está cerca
if (instance_exists(o_player)) {
    if (point_distance(x, y, o_player.x, o_player.y) < 60) {
        player_near = true;
    } else {
        player_near = false;
    }
}

// 1️⃣ Primer diálogo automático
if (!dialog_started && player_near && !global.dialog_active) {
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "Elias... ¿Eres tú?");
    ds_queue_enqueue(global.list_chat, "Creí que ya no volverías...");
    ds_queue_enqueue(global.list_chat, "Papá te espera en el taller, pero no tardes mucho...");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
    dialog_started = true;
}

// 2️⃣ Permitir repetir el diálogo con E
if (dialog_started && player_near && !global.dialog_active && keyboard_check_pressed(ord("E"))) {
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "Ya nos habías visitado, Elias...");
    ds_queue_enqueue(global.list_chat, "A veces me parece que el tiempo se detiene aquí...");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
}
