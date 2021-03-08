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
