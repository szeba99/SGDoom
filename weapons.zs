class StaffWeapon : DoomWeapon replaces RocketLauncher
{
	Default
	{
		Weapon.SelectionOrder 2500;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 10;
		Weapon.AmmoType "RocketAmmo";
		+WEAPON.NOAUTOFIRE
		Inventory.PickupMessage "$GOTLAUNCHER";
		Tag "Staff Weapon";
	}
	States
	{
	Ready:
		STAF I 1 A_WeaponReady;
		Loop;
	Deselect:
		STAF I 1 A_Lower;
		Loop;
	Select:
		STAF I 1 A_Raise;
		Loop;
	Fire:
		STAF IABCD 1;
		TNT1 A 0 A_Playsound("jaffa/Shoot");
		TNT1 A 0 A_ZoomFactor(1.01) ;
		TNT1 A 0 A_SetPitch(pitch-1);
		TNT1 A 0 A_Recoil(1);
		STAF E 2 A_FireMissile;
		STAF G 1 A_ZoomFactor(1.02) ;
		STAF H 1 A_ZoomFactor(1.03) ;
		STAF I 1 A_ZoomFactor(1.02) ;
		TNT1 A 0 A_ZoomFactor(1.00);
		STAF I 0 A_ReFire;
		Goto Ready;
	Flash:
		MISF A 3 Bright A_Light1;
		MISF B 4 Bright;
		MISF CD 4 Bright A_Light2;
		Goto LightDone;
	Spawn:
		STAP A -1;
		Stop;
	}
}

class Zat : DoomWeapon
{
	Default
	{
		Weapon.SelectionOrder 2500;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 10;
		Weapon.AmmoType "RocketAmmo";
		+WEAPON.NOAUTOFIRE
		Inventory.PickupMessage "$GOTLAUNCHER";
		Tag "Zat Nik Tel";
	}
	States
	{
	Ready:
		ZATW A 1 A_WeaponReady;
		Loop;
	Deselect:
		ZATW A 1 A_Lower;
		Loop;
	Select:
		ZATW A 1 A_Raise;
		Loop;
	Fire:
		TNT1 A 0 A_PlaySound("zat/shot");
		ZATW BCD 1		;
		ZATW EF 1 BRIGHT ;
		ZATW ED 1 BRIGHT;
		ZATW E 1 BRIGHT A_FireCustomMissile("Zatshot");
		ZATW F 1;
		ZATW CBAAAAAAAAAAAAAAAA 1;
		ZATW A 0 A_ReFire;
		Goto Ready;
	Flash:
		MISF A 3 Bright A_Light1;
		MISF B 4 Bright;
		MISF CD 4 Bright A_Light2;
		Goto LightDone;
	Spawn:
		ZATP A -1;
		Stop;
	}
}

class Pew : Actor replaces Rocket
{
	Default
	{
		XScale 0.5;
		YScale 0.5;
		Radius 11;
		Height 8;
		Speed 45;
		Damage 15;
		Projectile;
		+RANDOMIZE
		+ZDOOMTRANS
		SeeSound "jaffa/shoot";
		DeathSound "imp/shotx";
		Obituary "$OB_MPROCKET";
		RenderStyle "Add";
	}
	States
	{
	Spawn:
		PEWW A 1 Bright;
		Loop;
	Death:
		BAL1 C 2 Bright;
		BAL1 D 2 Bright;
		BAL1 E 2 Bright;
		Stop;
	BrainExplode:
		BAL1 CD 10 Bright;
		BAL1 E 10 A_BrainExplode;
		Stop;
	}
}

class ZatShot : FastProjectile
{
	Default
	{
		MissileHeight 8;
		MissileType "ZatTrail";
		XScale 0.5;
		YScale 0.5;
		Radius 11;
		Height 8;
		Speed 55;
		Damage 15;
		Projectile;
		+RANDOMIZE
		+ZDOOMTRANS
		RenderStyle "Add";
		//SeeSound "jaffa/shoot";
		DeathSound "imp/shotx";
		Obituary "$OB_MPROCKET";
	}
	States
	{
	Spawn:
		PEWZ A 1 Bright;
		Loop;
	Death:
		ELEC ABCDEFGHABCD 2 Bright;
		Stop;
	BrainExplode:
		BAL1 CD 10 Bright;
		BAL1 E 10 A_BrainExplode;
		Stop;
	}
}

class ZatTrail : Actor
{
	Default
	{
		MissileHeight 8;
		MissileType "ZatTrail";
		XScale 0.25;
		YScale 0.25;
		Radius 11;
		Height 8;
		RenderStyle "Add";
		Speed 0;;
		Damage 0;
		Projectile;
		+RANDOMIZE
		+ZDOOMTRANS
	}
	States
	{
	Spawn:
		PEWZ AAAAAAAAAAAAAAAAAAAAA 1 Bright A_FadeOut(0.2);
		Stop;
	}
}

/*class P90 : DoomWeapon replaces Chaingun
{
	Default
	{
		Weapon.SelectionOrder 700;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 100;
		Weapon.AmmoType "Clip";
		Inventory.PickupMessage "$GOTCHAINGUN";
		Obituary "$OB_MPCHAINGUN";
		Tag "$TAG_CHAINGUN";
	}
	States
	{
	Ready:
		W30B I 1 A_WeaponReady;
		Loop;
	Deselect:
		W30B I 1 A_Lower;
		Loop;
	Select:
		W30A DEFGHIJKLMNOPQRSTUVWXYZ 1;
		W30B ABCDEFGHI 1;
		Goto Ready;
	Fire:
		W30D A 1 A_FireCGun;
		W30D BCD 1;
		//W30D BCDEFGHIJKLMNOPQRSTUVWXYZ 1;
		W30D Z 0 A_ReFire;
		Goto Ready;
	//Flash:
		CHGF A 5 Bright A_Light1;
		Goto LightDone;
		CHGF B 5 Bright A_Light2;
		Goto LightDone;// comment this line
	Spawn:
		MGUN A -1;
		Stop;
	}
} */