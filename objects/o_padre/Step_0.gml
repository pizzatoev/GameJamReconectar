/// @description Control de diálogo del padre (en nuevo cuarto)

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
    ds_queue_enqueue(global.list_chat, "Elias... por fin llegaste al taller.");
    ds_queue_enqueue(global.list_chat, "Hay cosas que no pudimos arreglar... y no me refiero solo a los cables.");
    ds_queue_enqueue(global.list_chat, "Si vas a bajar al sótano... asegúrate de estar preparado.");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
    dialog_started = true;
}

// 2️⃣ Permitir repetir el diálogo con E
if (dialog_started && player_near && !global.dialog_active && keyboard_check_pressed(ord("E"))) {
    ds_queue_clear(global.list_chat);
    ds_queue_enqueue(global.list_chat, "No todo lo que se rompe puede repararse, Elias...");
    ds_queue_enqueue(global.list_chat, "Pero tú ya lo sabes, ¿verdad?");
    
    instance_create_layer(0, 0, "GUI", o_chat);
    global.dialog_active = true;
}
