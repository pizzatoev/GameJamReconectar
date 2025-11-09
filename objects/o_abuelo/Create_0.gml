/// @description Configuración inicial del abuelo

// Asegurar variables globales (por si se carga antes que el jugador)
if (!variable_global_exists("list_chat")) {
    global.list_chat = ds_queue_create();
}
if (!variable_global_exists("dialog_active")) {
    global.dialog_active = false;
}
if (!variable_global_exists("dialog_text")) {
    global.dialog_text = "";
}

// Control interno del diálogo
dialog_started = false; // si ya ocurrió la primera vez
player_near = false;    // si el jugador está cerca
