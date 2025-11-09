/// @description Destroy Event del o_chat

if (instance_exists(o_player)) {
    o_player.can_move = true;
    o_player.puzzle_active = false;
    o_player.hspeed = 0;
    o_player.vspeed = 0;
}
global.dialog_active = false;
