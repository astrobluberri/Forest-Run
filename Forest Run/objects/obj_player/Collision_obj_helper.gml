if (alarm[0] <0)
{
	hp += other.heal;
	alarm[0] = 60;
	image_blend = c_lime;
	
	if (hp <= 0)
	{
		room_restart();
	}
}