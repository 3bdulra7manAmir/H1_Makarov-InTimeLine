main()
{
	maps\_custom_utility::detach_all_attachments();

	switch( codescripts\character::get_random_character(8) )
	{
	case 0:
		character\character_shadow_co_assault_b::main();
		break;
	case 1:
		character\character_shadow_co_assault_c::main();
		break;
	case 2:
		character\character_shadow_co_lmg_b::main();
		break;
	case 3:
		character\character_shadow_co_lmg_c::main();
		break;
	case 4:
		character\character_shadow_co_shotgun_b::main();
		break;
	case 5:
		character\character_shadow_co_shotgun_c::main();
		break;
	case 6:
		character\character_shadow_co_smg_b::main();
		break;
	case 7:
		character\character_shadow_co_smg_c::main();
		break;
	}
	self.voice = "american";
}

precache()
{
	character\character_shadow_co_assault_b::precache();
    character\character_shadow_co_assault_c::precache();
    character\character_shadow_co_lmg_b::precache();
    character\character_shadow_co_lmg_c::precache();
    character\character_shadow_co_shotgun_b::precache();
    character\character_shadow_co_shotgun_c::precache();
    character\character_shadow_co_smg_b::precache();
    character\character_shadow_co_smg_c::precache();
}