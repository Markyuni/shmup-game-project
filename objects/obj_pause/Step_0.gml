var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

var _move = _down - _up;

if _move != 0
{
	//move index
	index += _move;
	
	//clamp values
	var _size = array_length(pause);
	if index < 0 index = _size - 1;		//at start, so loop to end
	else if index >= _size index = 0;	//at end, so loop to start
	
	audio_play_sound(snd_menu_select, 0, false);	// plays sound
}

if _select
{
	audio_play_sound(snd_menu_confirm, 0, false);	// plays sound
	switch(index)
	{
		case 0:
			with obj_game
			{
				instance_activate_all();
				paused = false;
			}
			instance_destroy();
		break;
		case 1:
			//Exit
			instance_destroy(obj_game);
			room_goto(rm_start);
		break;
	}
}

