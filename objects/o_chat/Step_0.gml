/// @description Step Event del o_chat

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"))) {
    if (!ds_queue_empty(global.list_chat)) {
        chat = ds_queue_head(global.list_chat);
        ds_queue_dequeue(global.list_chat);
    } else {
        // Fin del diálogo
        if (instance_exists(o_player)) {
            o_player.can_move = true;
            o_player.puzzle_active = false;
            o_player.hspeed = 0;
            o_player.vspeed = 0;
        }
        global.dialog_active = false;
        instance_destroy();
    }
}
