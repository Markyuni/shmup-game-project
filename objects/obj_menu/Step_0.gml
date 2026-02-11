var _up = keyboard_check_pressed(vk_up);
var _down = keyboard_check_pressed(vk_down);
var _select = keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter);

var _move = _down - _up;

if _move != 0
{
	//move index
	index += _move;
	
	//clamp values
	var _size = array_length(menu[sub_menu]);
	if index < 0 index = _size - 1;		//at start, so loop to end
	else if index >= _size index = 0;	//at end, so loop to start
	
	audio_play_sound(snd_menu_select, 0, false);	// plays sound
}

if _select
{
	audio_play_sound(snd_menu_confirm, 0, false);	// plays sound
	switch(sub_menu)
	{
		case MAIN:
			switch(index)
			{
				case 0:
					//Start
                    if (!instance_exists(obj_trans_fade)) {
                        //room_goto(rm_stage1);
                        
                        _ROOM_FADE(rm_stage1, 5, c_black);
                        
                        if !instance_exists(obj_game) {
                            instance_create_layer(x, y, "Instances", obj_game);
                        } else {
                            instance_activate_object(obj_game);
                        }
                    }
				break;
				case 1:
					//Settings
					sub_menu = SETTINGS;
					index = 0;
				break;
				case 2:
					//Exit
					game_end();
				break;
			}
		break;
		case SETTINGS:
			switch(index)
			{
				case 0:
					//Graphics
				break;
				case 1:
					//Sound
				break;
				//case 2:
				//	//Controls
				//break;
				case 2:
					//Back
					sub_menu = MAIN;
					index = 1;
				break;
			}
		break;
	}
}

