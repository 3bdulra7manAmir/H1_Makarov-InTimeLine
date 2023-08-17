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
    self.secondaryweapon = "colt45";
    self.sidearm = "colt45";

    if ( isai( self ) )
    {
        self setengagementmindist( 256.0, 0.0 );
        self setengagementmaxdist( 768.0, 1024.0 );
    }

    self.weapon = "m16_grenadier";
    switch( codescripts\character::get_random_character(2) )
    {
    case 0:
		character\character_vil_shephered::main();
		break;
	case 1:
		character\character_vil_shephered::main();
		break;
    }
}

spawner()
{
    self setspawnerteam( "allies" );
}

precache()
{
    character\character_vil_shephered::precache();
    precacheitem( "m16_grenadier" );
    precacheitem( "m203" );
    precacheitem( "colt45" );
    precacheitem( "colt45" );
    precacheitem( "fraggrenade" );
}
