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
    self.health = 100;
    self.grenadeweapon = "fraggrenade";
    self.grenadeammo = 0;
    self.secondaryweapon = "usp_silencer";
    self.sidearm = "usp_silencer";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "g36c";
    switch( codescripts\character::get_random_character(2) )
    {
    case 0:
		character\character_shadow_co_assault_b::main();
		break;
	case 1:
		character\character_shadow_co_assault_c::main();
		break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_shadow_co_assault_b::precache();
    character\character_shadow_co_assault_c::precache();
    precacheitem( "g36c" );
    precacheitem( "usp_silencer" );
    precacheitem( "usp_silencer" );
    precacheitem( "fraggrenade" );
}
