// H1 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    self.animtree = "";
    self.additionalassets = "";
    self.team = "allies";
    self.type = "human";
    self.subclass = "regular";
    self.accuracy = 0.2;
    self.health = 150;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "usp";
    self.sidearm = "usp";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "mp5";

    switch( codescripts\character::get_random_character(2) )
    {
    case 0:
		character\character_shadow_co_smg_b::main();
		break;
	case 1:
		character\character_shadow_co_smg_c::main();
		break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_shadow_co_smg_b::precache();
    character\character_shadow_co_smg_c::precache();
    precacheitem( "mp5" );
    precacheitem( "usp" );
    precacheitem( "usp" );
    precacheitem( "fraggrenade" );
}
