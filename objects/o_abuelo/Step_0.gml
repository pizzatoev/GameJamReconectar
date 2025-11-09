/// @description Control de diálogo del abuelo

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
    ds_queue_enqueue(global.list_chat, "Ah... Elias, siempre supe que volverías a esta casa...");
    ds_queue_enqueue(global.list_chat, "Las paredes aún recuerdan tu nombre... y el calor de aquel fuego.");
    ds_queue_enqueue(global.list_chat, "No corras, muchacho. Aquí el tiempo no te deja escapar.");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
    dialog_started = true;
}

// 2️⃣ Permitir repetir el diálogo con E
if (dialog_started && player_near && !global.dialog_active && keyboard_check_pressed(ord("E"))) {
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "El mismo ciclo... una y otra vez...");
    ds_queue_enqueue(global.list_chat, "¿Crees que reparar los cables cambiará algo, Elias?");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
}
