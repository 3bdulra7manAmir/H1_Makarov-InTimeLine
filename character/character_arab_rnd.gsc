main()
{
	maps\_custom_utility::detach_all_attachments();

    switch ( codescripts\character::get_random_character( 6 ) )
    {
        case 0:
            character\character_sp_arab_regular_asad::main();
            break;
        case 1:
            character\character_sp_arab_regular_sadiq::main();
            break;
        case 2:
            character\character_sp_arab_regular_ski_mask::main();
            break;
        case 3:
            character\character_sp_arab_regular_ski_mask2::main();
            break;
        case 4:
            character\character_sp_arab_regular_suren::main();
            break;
        case 5:
            character\character_sp_arab_regular_yasir::main();
            break;
    }
	self.voice = "arab";
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