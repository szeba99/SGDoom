class REPL_MAMA : Actor
{
	Default
	{
		Health 1000;
		PainChance 180;
		Speed 0;
		Radius 50;
		Height 100;
		Mass 50;
		Monster;
		XScale 2.0;
		YScale 2.0;
		+FLOORCLIP
		+NOBLOOD
		SeeSound "repli/repli";
		AttackSound "repli/repli";
		PainSound "impact";
		DeathSound "repli/repli";
		ActiveSound "repli/repli";
		Obituary "replicators killed someone";
		Tag "Replicator mother";
	}
	States
	{
	Spawn:
		REPL AB 10 A_Look;
		Loop;
	See:
		REPL AABBAABB 2 Fast A_Chase;
		REPL ABABABAB 2 A_SpawnItemEx("REPL",0,120,40,0,1.5);
		REPL A 45 A_AlertMonsters();
		Loop;
	Melee:
		REPL AB 8 Fast A_FaceTarget;
		REPL A 8 Fast A_SargAttack;
		Goto See;
	Pain:
		REPL C 2 Fast;
		REPL C 2 Fast A_Pain;
		Goto See;
	Death:
		REPL C 2;
		REPL D 2 A_Scream;
		REPL EFGHIJK 2;
		REPL K 4 A_NoBlocking;
		REPL K 4;
		REPL K 200 A_FadeOut();
		Stop;
	Raise:
		REPL KJIHGFEDCB 2;
		Goto See;
	}
}


class REPL_MEDIUM : Actor
{
	Default
	{
		Health 60;
		PainChance 180;
		Speed 10;
		Radius 20;
		Height 25;
		Mass 50;
		Monster;
		+FLOORCLIP
		+NOBLOOD
		SeeSound "repli/repli";
		AttackSound "repli/repli";
		PainSound "impact";
		DeathSound "repli/repli";
		ActiveSound "repli/repli";
		Obituary "replicators killed someone";
		Tag "Replicator medium size";
	}
	States
	{
	Spawn:
		REPL AB 10 A_Look;
		Loop;
	See:
		REPL AABBAABB 2 Fast A_Chase;
		Loop;
	Melee:
		REPL AB 3 Fast A_FaceTarget;
		REPL A 3 Fast A_SargAttack;
		Goto See;
	Pain:
		REPL C 2 Fast;
		REPL C 2 Fast A_Pain;
		Goto See;
	Death:
		REPL C 3;
		REPL D 3 A_Scream;
		REPL EFGHIJK 3;
		REPL K 3 A_NoBlocking;
		REPL K 3;
		REPL KKKKKKKKKKKKKKKKKKKKKKKKKKKKK 100 A_FadeOut();
		Stop;
	Raise:
		REPL KJIHGFEDCB 2;
		Goto See;
	}
}

class REPL : REPL_MEDIUM
{
	Default
	{
		Health 10;
		Radius 10;
		Height 10;
		Mass 100;
		XScale 0.5;
		YScale 0.5;
		Tag "Replicator";

	}
}

class REPL_CEILING : REPL
{
	Default
	{
		+SPAWNCEILING
		+DROPOFF
		+NOGRAVITY
		Tag "Replicator ceiling";
	}
	States
	{
	Spawn:
		REPL LM 10 A_Look;
		Loop;
	See:
		REPL LLMMLLMM 2 Fast A_Chase;
		REPL LLMM 0 Fast A_StalkerChaseDecide;
		Loop;
	Drop:
		REPL L 2 A_StalkerDrop;
		REPL MMMMM 3;
		Goto SeeFloor;
	SeeFloor:
		REPL AABBAABB 2 Fast A_Chase;
		Loop;
	}
	
	void A_StalkerDrop ()
	{
		bNoVerticalMeleeRange = false;
		bNoGravity = false;
	}
	
	void A_StalkerChaseDecide ()
	{
		if (!bNoGravity)
		{
			SetStateLabel("SeeFloor");
		}
		else if (ceilingz > pos.z + height)
		{
			SetStateLabel("Drop");
		}
	}
}