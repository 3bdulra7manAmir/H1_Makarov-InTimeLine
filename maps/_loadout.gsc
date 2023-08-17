// H1 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

init_loadout()
{
    give_loadout();
    maps\_loadout_code::loadout_complete();
}

give_loadout()
{
    if ( isdefined( level.dodgeloadout ) )
        return;

    if ( !isdefined( level.campaign ) )
        level.campaign = "american";

    var_0 = maps\_loadout_code::get_loadout();
    level.player maps\_loadout_code::setdefaultactionslot();
    level.has_loadout = 0;
    maps\_loadout_code::persist( "sniperescape", "scoutsniper" );
    maps\_loadout_code::persist( "launchfacility_a", "icbm" );
    maps\_loadout_code::persist( "launchfacility_b", "launchfacility_a" );
    maps\_loadout_code::loadout( "killhouse", undefined, undefined, "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "cargoship", "mp5_silencer", "m4_silencer", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "coup", undefined, undefined, undefined, undefined, undefined, "american" );
    maps\_loadout_code::loadout( "blackout", "m4m203_silencer_reflex", "mp5", "fraggrenade", "flash_grenade", "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "armada", "m4_grunt", "beretta", "fraggrenade", "flash_grenade", "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "bog_a", "m4_grenadier", "beretta", "fraggrenade", "flash_grenade", "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "hunted", undefined, "colt45", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "ac130", undefined, undefined, undefined, undefined, "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "bog_b", "m4_grenadier", "beretta", "fraggrenade", "flash_grenade", "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "airlift", "m4_grenadier", "colt45", "fraggrenade", "flash_grenade", "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "aftermath", undefined, undefined, undefined, undefined, "viewhands_us_army", "american" );
    maps\_loadout_code::loadout( "village_assault", "m4m203_silencer_reflex", "m1014", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "scoutsniper", "m14_scoped_silencer", "usp_silencer", "fraggrenade", undefined, "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "sniperescape", "m14_scoped_woodland", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "village_defend", "saw", "m14_scoped_woodland", "fraggrenade", "smoke_grenade_american", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "ambush", "remington700", "colt45", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "icbm", "m4m203_silencer_reflex", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "launchfacility_a", "masada_digital_reflex", "h2_cheytac_mp", "fraggrenade", "smoke_grenade_american", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "launchfacility_b", "m4m203_silencer_reflex", "usp_silencer", "fraggrenade", "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "jeepride", "m4_grunt", "colt45", "fraggrenade", undefined, "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "airplane", "mp5_silencer", "usp_silencer", undefined, "flash_grenade", "viewhands_us_army", "british" );
    maps\_loadout_code::loadout( "simplecredits", undefined, undefined, undefined, undefined, undefined, undefined );
    maps\_loadout_code::loadoutequipment( "blackout", "c4", "claymore" );
    maps\_loadout_code::loadoutequipment( "armada", undefined, "claymore" );
    maps\_loadout_code::loadoutequipment( "village_assault", "c4", "cobra_air_support" );
    maps\_loadout_code::loadoutequipment( "sniperescape", "c4", "claymore" );
    maps\_loadout_code::loadoutequipment( "village_defend", undefined, "claymore" );
    maps\_loadout_code::loadoutequipment( "icbm", "c4", "claymore" );
    maps\_loadout_code::loadoutequipment( "launchfacility_a", "c4", "claymore" );
    maps\_loadout_code::loadoutequipment( "launchfacility_b", "c4", "claymore" );
    maps\_loadout_code::loadoutcustomization();
    maps\_loadout_code::default_loadout_if_notset();

    precachemodel( "body_shadow_co_assault" );
    precachemodel( "head_shadow_co_b" );
    precachemodel( "head_shadow_co_c" );

    precachemodel( "viewhands_us_army" );
    precachemodel( "viewhands_player_us_army" );
    precachemodel( "viewhands_player_sas_woodland" );

    precachemodel( "worldbody_h1_sas_woodland" );

    if (level.script == "sniperescape")
    {
        precachemodel( "h2_head_vil_makarov" );
        precachemodel( "body_airport_com_a" );
        precachemodel( "body_airport_com_b" );
        precachemodel( "head_airport_a" );
    }

    if (level.script == "jeepride")
    {
        precachemodel( "h2_head_vil_makarov" );
        precachemodel( "body_airport_com_a" );

        precachemodel( "body_airport_com_d" );
        precachemodel( "head_airport_d" );

        precachemodel( "body_airport_com_b" );
        precachemodel( "head_airport_b" );
    }

    if (level.script != "sniperescape")
    {
        precachemodel( "head_vil_shepherd" );
        precachemodel( "body_shadow_co_lmg" );
        precachemodel( "body_shadow_co_smg" );
        precachemodel( "body_shadow_co_shotgun" );
    }

    //precachemodel( "body_force_assault_woodland" );
    //precachemodel( "body_force_b_woodland" );
    //precachemodel( "body_force_c_woodland" );
    //precachemodel( "body_force_mark_woodland" );
    //precachemodel( "head_force_assault" );
    //precachemodel( "head_force_assault_mark" );
    //precachemodel( "head_force_c" );
    //precachemodel( "head_force_chad" );

    //precacheitem("gl_masada_digital_eotech");
    //precacheitem("masada");
    //precacheitem("masada_acog");
    //precacheitem("masada_digital");
    //precacheitem("masada_digital_acog");
    //precacheitem("masada_digital_eotech");
    //precacheitem("masada_digital_grenadier_eotech");
    //precacheitem("masada_digital_reflex");
    //precacheitem("masada_reflex");
    
    //precacheitem("masada_silencer_mt_dust_off");
    //precacheitem("masada_silencer_mt_dust_on");
    //precacheitem("alt_masada_silencer_mt_camo_on_h2");
    //precacheitem("masada_silencer_mt_camo_on_h2");

    //precacheitem("masada_silencer_mt_black_off");
    //precacheitem("masada_silencer_mt_black_on");

    //precacheitem("cheytac_silencer");
    //precacheitem("cheytac_silencer_desert");
    //precacheitem("cheytac");
    //precacheitem("h2_cheytac_mp");
}