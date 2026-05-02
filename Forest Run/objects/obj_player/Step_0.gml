
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

move_and_collide(_hor* move_speed, _ver * move_speed, tilemap);

if (_hor !=0 or _ver !=0) 
{
	if (_ver > 0) sprite_index = spr_playerIdle;
	else if (_ver < 0) sprite_index = spr_playerIdle;
	else if (_hor > 0) sprite_index = spr_playerRight;
	else if (_hor < 0) sprite_index = spr_playerLeft;
	
	facing = point_direction(0,0,_hor,_ver);
}
else
{
	if (sprite_index == spr_playerRight) sprite_index = spr_playerIdle_Right;
	else if (sprite_index == spr_playerLeft) sprite_index = spr_playerIdle_Left;
	else if (sprite_index == spr_playerIdle) sprite_index = spr_playerIdle;
}

if (keyboard_check_pressed(vk_space))
{
	var _inst = instance_create_depth (x, y, depth, obj_attack);
	_inst.image_angle = facing;
	_inst.damage*=damage;
}
