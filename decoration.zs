class soldier_static : Actor
{
	Default
	{
		Health 500;
		Radius 20;
		Height 56;
		Mass 100;
		+FLOORCLIP
		+SOLID
		+SHOOTABLE
	}
	States
	{
	Spawn:
		SOLD AA 10;
		Loop;
	}
}


class hatak : Actor 
{
    Default
    {
        Radius 100;
        Height 100;
        Health 100;
        ProjectilePassHeight -16;
        Mass 1000;
        +SOLID
        +SHOOTABLE
        +NOBLOOD
        +NOFRICTIONBOUNCE
        +ACTLIKEBRIDGE
		+NOGRAVITY
        }
    States
    {
    Spawn:
        HATA A -1;
        Stop;
    Death:
        0000 A 1;
        Stop;
    }
}

class hataksmall : Actor 
{
    Default
    {
        Radius 26;
        Height 30;
        Health 100;
        ProjectilePassHeight -16;
        Mass 1000;
        +SOLID
        +SHOOTABLE
        +NOBLOOD
        +NOFRICTIONBOUNCE
        +ACTLIKEBRIDGE
		+nogravity
		speed 0.02;
        }
    States
    {
    Spawn:
        HATA AAAAA 1 A_Wander(CHF_NODIRECTIONTURN);
        Loop;
    Death:
        0000 A 1;
        Stop;
    }
}

class daedalus : Actor 
{
    Default
    {
        Radius 100;
        Height 100;
        Health 100;
        ProjectilePassHeight -16;
        Mass 1000;
        +SOLID
        +SHOOTABLE
        +NOBLOOD
        +NOFRICTIONBOUNCE
        +ACTLIKEBRIDGE
		+NOGRAVITY
        }
    States
    {
    Spawn:
        0000 A -1;
        Stop;
    Death:
        0000 A 1;
        Stop;
    }
}


class DHD : SwitchableDecoration
{
    Default
    {
        Radius 40;
        Height 60;
        Health 4000;
        ProjectilePassHeight -16;
        Mass 1000;
        +SOLID
        +SHOOTABLE
        +NOBLOOD
        +NOFRICTIONBOUNCE
        +ACTLIKEBRIDGE
		+USESPECIAL
        }
    States
    {
    Spawn:
        DHD1 A 10;
        loop;
	Active:
		TNT1 A 0;
		DHD1 B 10;
		Goto Spawn;
    Death:
        DHD1 AAAAAAAAAAAAAAAAAAAAAAAAAAA 2 A_FadeOut();
        Stop;
    }
}

class kawoosh : Actor
{
	Default
	{
	+NOGRAVITY
	+NOINTERACTION
	+CLIENTSIDEONLY
	
	//RenderStyle "Add";
	Alpha 1.0;
	}
    States
    {
    Spawn:
		0000 A  1 BRIGHT A_SpawnItemEx("kawoosh2");
        0000 A  1 BRIGHT;
        0000 B  1 BRIGHT;
        0000 C  1 BRIGHT;
        0000 D  1 BRIGHT;
        0000 E  1 BRIGHT;
        0000 F  1 BRIGHT;
        0000 G  1 BRIGHT;
        0000 H  1 BRIGHT;
        0000 I  1 BRIGHT;
        0000 J  1 BRIGHT;
        0000 K  1 BRIGHT;
        0000 L  1 BRIGHT;
        0000 M  1 BRIGHT;
        0000 N  1 BRIGHT;
        0000 O  1 BRIGHT;
        0000 P  1 BRIGHT;
        0000 Q  1 BRIGHT;
        0000 R  1 BRIGHT;
        0000 S  1 BRIGHT;
        0000 T  1 BRIGHT;
        0000 U  1 BRIGHT;
        0000 V  1 BRIGHT;
        0000 W  1 BRIGHT;
        0000 X  1 BRIGHT;
        0000 Y  1 BRIGHT;
        0000 Z  1 BRIGHT;
        0000 [  1 BRIGHT;
        0000 \  1 BRIGHT;
        0000 ]  1 BRIGHT;
        000_ A  1 BRIGHT;
        000_ B  1 BRIGHT;
        000_ C  1 BRIGHT;
        000_ D  1 BRIGHT;
        000_ E  1 BRIGHT;
        000_ F  1 BRIGHT;
        000_ G  1 BRIGHT;
        000_ H  1 BRIGHT;
        000_ I  1 BRIGHT;
        000_ J  1 BRIGHT;
        000_ K  1 BRIGHT;
        000_ L  1 BRIGHT;
        000_ M  1 BRIGHT;
        000_ N  1 BRIGHT;
        000_ O  1 BRIGHT;
        000_ P  1 BRIGHT;
        000_ Q  1 BRIGHT;
        000_ R  1 BRIGHT;
        000_ S  1 BRIGHT;
        000_ T  1 BRIGHT;
        000_ U  1 BRIGHT;
        000_ V  1 BRIGHT;
        000_ W  1 BRIGHT;
        000_ X  1 BRIGHT;
        000_ Y  1 BRIGHT;
        000_ Z  1 BRIGHT;
        000_ [  1 BRIGHT;
        000_ \  1 BRIGHT;
        000_ ]  1 BRIGHT;
        00_A A  1 BRIGHT;
        00_A B  1 BRIGHT;
        00_A C  1 BRIGHT;
        00_A D  1 BRIGHT;
        00_A E  1 BRIGHT;
        00_A F  1 BRIGHT;
        00_A G  1 BRIGHT;
        00_A H  1 BRIGHT;
        00_A I  1 BRIGHT;
        00_A J  1 BRIGHT;
        00_A K  1 BRIGHT;
        00_A L  1 BRIGHT;
        00_A M  1 BRIGHT;
        00_A N  1 BRIGHT;
        00_A O  1 BRIGHT;
        00_A P  1 BRIGHT;
        00_A Q  1 BRIGHT;
        00_A R  1 BRIGHT;
        00_A S  1 BRIGHT;
        00_A T  1 BRIGHT;
        00_A U  1 BRIGHT;
        00_A V  1 BRIGHT;
        00_A W  1 BRIGHT;
		00_A WWWWWWWWWWWWWWWWWWWWW  1 BRIGHT A_FadeOut();
        Stop;
    }
}

class kawoosh2 : kawoosh
{
	Default
	{
	+NOGRAVITY
	+NOINTERACTION
	+CLIENTSIDEONLY
	
	RenderStyle "Add";
	Alpha 0.5;
	}
}