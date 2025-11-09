/// @description Destroy Event del o_chat

<<<<<<< Updated upstream:objects/o_puzzle_controller/Other_4.gml

audio_play_sound(snd_music2, 0, true)
=======
if (instance_exists(o_player)) {
    o_player.can_move = true;
    o_player.puzzle_active = false;
    o_player.hspeed = 0;
    o_player.vspeed = 0;
}
global.dialog_active = false;
>>>>>>> Stashed changes:objects/o_chat/Destroy_0.gml
