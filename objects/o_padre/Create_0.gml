/// @description Configuración inicial del padre
image_xscale = -1;

// Asegurar que las variables globales existen
if (!variable_global_exists("list_chat")) {
    global.list_chat = ds_queue_create();
}
if (!variable_global_exists("dialog_active")) {
    global.dialog_active = false;
}
if (!variable_global_exists("dialog_text")) {
    global.dialog_text = "";
}

// Control del diálogo
dialog_started = false; // para saber si ya se activó automáticamente
player_near = false;    // para detectar proximidad del jugador
