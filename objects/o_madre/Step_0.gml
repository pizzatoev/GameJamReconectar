/// @description Control de diálogo de la madre

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
    ds_queue_enqueue(global.list_chat, "Elias... ¿Recuerdas este lugar?");
    ds_queue_enqueue(global.list_chat, "Solías venir a la cocina por las noches, decías que el zumbido de los cables te calmaba.");
    ds_queue_enqueue(global.list_chat, "Ten cuidado, hijo... el sonido puede mentir.");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
    dialog_started = true;
}

// 2️⃣ Permitir repetir el diálogo con E
if (dialog_started && player_near && !global.dialog_active && keyboard_check_pressed(ord("E"))) {
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "¿Sigues buscando respuestas, Elias?");
    ds_queue_enqueue(global.list_chat, "La electricidad no te mostrará la verdad... solo volverá a arder.");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
}
