/*
This Filter script [San Andreas Cheats] has been made by [RaZ]Hal_Moore,
With this filterscript, you can use cheats that are used in singleplayer by
typing [CHEATNAME]. A full list of Cheats can be viewed by typing /cheatlist.
Now that its V.1.5, You can type the CHEAT without "/" before it. Example:
cheatlist - Its just like /cheatlist.

All Cheats are in San Andreas Singleplayer.. The Cheats in this filterscript have
been categorized just like in this http://www.gtasanandreas.net/cheats/pc.php website.

Credits:
* [RaZ]Hal_Moore (ME) For Whole script
* aNdReSk's for his Unlimited Oxygen System that is used in
   UNLIMITED OXYGEN CHEAT
* Lenard_Black for telling me the effects of cheats in Singleplayer
   (Coz i can't open mine)
* Muhammad Fauzan Aziz and Alexandru Radu for some Ideas of Features
   (Because i'm not Familiar with GTA SA Single Player)

Note:
Categories Police, Stats & Gangs and Gameplay is not in this Filterscript,
because most of them are not possible in SA-MP. I'm a new scripter, and i think
their not possible. If i find out about they are possible, i will add them to
the next version.


ChangeLog:
Version 1.0 [ LINK http://forum.sa-mp.com/showthread.php?p=1540703#post1540703 ]
* Added Weapons, Health, Armour & Money Category 
 ( Weapon Ammo's not The same)
* Added Spawning Objects Category
* Added Weather and Time Category 

Version 1.5 [ LINK http://forum.sa-mp.com/showthread.php?p=1540703#post1540703 ]
- [UPDATE] Converted from 0.3c to 0.3d
- [ADDED] Two Ways of Using Cheats
 + COMMAND TYPE [ DONE ]
 + TEXT TYPE [ DONE ]
- [UPDATE] Weapon Cheat Ammo's are now the same as Singleplayer [PROGRESS]
- [ADDED] Wasted Text on your Screen When you die

Version 1.5 Bugs
B1) /FullClip gives 9999 to the Weapon Selected Only and if you Type it again, it
dosen't put it back to Normal

*/

#define Filterscript
#include <a_samp>

new UnderWater[MAX_PLAYERS];
new pOxygenGlobal[MAX_PLAYERS];

#define COLOR_WATERRR 0x7CFC00AA
#define RED 0xE60000FF
#define DARKGREY 0x696969FF

public OnFilterScriptInit()
{

	print("\n--------------------------------------");
	print(" Single Player Features to Multiplayer  ");
	print("        ~ By [RaZ]Hal_Moore ~           ");
	print("        ~    Version 1.5    ~           ");
	print("--------------------------------------\n");
	SetTimer("CheckZ", 250, 1);
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
    UnderWater[playerid]=0;
    SendClientMessage(playerid,RED,"This Server uses [RaZ]Hal_Moore's SPFtoSAMP Filterscipt (V.1.5)");
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    UnderWater[playerid]=0;
	return 1;
}

public OnPlayerSpawn(playerid)
{
    UnderWater[playerid]=0;
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
    UnderWater[playerid]=0;
    GameTextForPlayer(playerid,"~w~Wasted",4000,2);
	return 1;
}
// Option 1 = Cheat by CMD =============================================================================================== CHEAT BY COMMAND
// Option 1 = Cheat by CMD =============================================================================================== CHEAT BY COMMAND
// ----------------------------------[NOTE]-------------------------------------
// The Entire Script From this Line until Line 512 Is the Option 1 - CMD to Cheat
public OnPlayerCommandText(playerid, cmdtext[])
{

// CHEAT LIST
    if (strcmp("/cheatlist", cmdtext, true, 10) == 0) // Cheatlist
	{
    ShowPlayerDialog(playerid, 30320, DIALOG_STYLE_LIST, "{00FF00}CHEAT LIST{FFFFFF}", "{00FF00}Category 1 (Weapons, Health, Armour and Money){FFFFFF} \n{00FF00}Category 2 Part 1 (Spawning Objects){FFFFFF} \n{00FF00}Category 2 Part 2 (Spawning Objects){FFFFFF} \n{00FF00}Category 3 (Time and Weather){FFFFFF}", "Select", "Exit");
	return 1;
	}
// Weapons, Health, Armor & Money

	if (strcmp("/LXGIWYL", cmdtext, true, 10) == 0) // Weapon Set 1, Thug Tools
	{
	GivePlayerWeapon(playerid,27,500);
    GivePlayerWeapon(playerid,28,500);
    GivePlayerWeapon(playerid,30,500);
    GivePlayerWeapon(playerid,35,500);
    GivePlayerWeapon(playerid,18,500);
    GivePlayerWeapon(playerid,41,500);
    GivePlayerWeapon(playerid,1,500);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
    return 1;
	}
	if (strcmp("/PROFESSIONALSKIT", cmdtext, true, 10) == 0) // Weapon Set 2, Professional Tools
	{
	GivePlayerWeapon(playerid,4,500);
    GivePlayerWeapon(playerid,22,500);
    GivePlayerWeapon(playerid,26,500);
    GivePlayerWeapon(playerid,32,500);
    GivePlayerWeapon(playerid,34,500);
    GivePlayerWeapon(playerid,37,500);
    GivePlayerWeapon(playerid,16,10);
    GivePlayerWeapon(playerid,42,500);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/UZUMYMW", cmdtext, true, 10) == 0) // Weapon Set 3, Nutter Tools
	{
	GivePlayerWeapon(playerid,9,500);
    GivePlayerWeapon(playerid,23,500);
    GivePlayerWeapon(playerid,27,60);
    GivePlayerWeapon(playerid,31,500);
    GivePlayerWeapon(playerid,35,500);
    GivePlayerWeapon(playerid,39,10);
    GivePlayerWeapon(playerid,40,10);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/HESOYAM", cmdtext, true, 10) == 0) // Health, Armour, +$250,000
	{
	    SetPlayerHealth(playerid, 100.0);
	    SetPlayerArmour(playerid, 100);
	    GivePlayerMoney(playerid, 250000);
	    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
		return 1;
	}
	if (strcmp("/BAGUVIX", cmdtext, true, 10) == 0) // Semi-Infinite Health
	{
		SetPlayerHealth(playerid,1000);
		SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
		return 1;
	}
	if (strcmp("/CVWKXAM", cmdtext, true, 10) == 0) // Infinite Oxygen
	{
	for(new j = 0;j<MAX_PLAYERS;j++)
	{
 		if(IsPlayerConnected(j))
		 {

    new Float:pos[3];
    new Float:pHealthFLOAT;

    GetPlayerPos(j, pos[0], pos[1], pos[2]);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
    if (UnderWater[j]==0){ 

    	if (pos[2]<-2.0){
    	GetPlayerHealth(j,pHealthFLOAT);
    	pOxygenGlobal[j]=floatround(pHealthFLOAT, floatround_tozero);
    	UnderWater[j]=1;
    	SendClientMessage(j, COLOR_WATERRR, "You are underwater!");
    	}
    }

	else

    if (UnderWater[j]==1)
	{ 
    	if (pos[2]>=0.0)
		{ 
    	new Float:pHealthFLOATOUT;

       	pHealthFLOATOUT = float(pOxygenGlobal[j]);
        SetPlayerHealth(j,pHealthFLOATOUT);
        UnderWater[j]=0;
        SendClientMessage(j, COLOR_WATERRR, "You are no longer underwater!");
    	}
		else
	SetPlayerHealth(j,1000.0);
    }

  }
		return 1;
	}
	}
	
	if (strcmp("/ANOSEONGLASS", cmdtext, true, 10) == 0) // Adrenaline Mode ======================================== [ NOT POSSIBLE ]
	{
	    SendClientMessage(playerid, RED,"SERVER: This Command has been disabled");
		return 1;
	}
	if (strcmp("/FULLCLIP", cmdtext, true, 10) == 0) // Infinite Ammo, No Reload
	{
	new weapon = GetPlayerWeapon(playerid);
    GivePlayerWeapon(playerid, weapon, 999999999);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}

// [ -----------------------------------NOTE--------------------------------- ]
// Uncomment PutPlayerInVehicle(playerid,LVehicleID,0); if you want players to
// automatically enter spawned vehicles.
	if (strcmp("/AIWPRTON", cmdtext, true, 10) == 0) // Spawn Rhino
	{
 	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(432, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/OLDSPEEDDEMON", cmdtext, true, 10) == 0) // Spawn Bloodring Ranger
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(504, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/JQNTDMH", cmdtext, true, 10) == 0) // Spawn Rancher
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(489, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/VROCKPOKEY", cmdtext, true, 10) == 0) // Spawn Racecar
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(502, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/VPJTQWV", cmdtext, true, 10) == 0) // Spawn Racecar
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(503, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/WHERESTHEFUNERAL", cmdtext, true, 10) == 0) // Spawn Romero
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(442, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/CELEBRITYSTATUS", cmdtext, true, 10) == 0) // Spawn Stretch
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(409, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/TRUEGRIME", cmdtext, true, 10) == 0) // Spawn Trashmaster
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(408, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/RZHSUEW", cmdtext, true, 10) == 0) // Spawn Caddy
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(457, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/JUMPJET", cmdtext, true, 10) == 0) //Spawn Hydra
 	{
 	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(520, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/KGGGDKP", cmdtext, true, 10) == 0) // Spawn Vortex Hovercraft
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(593, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/AIYPWZQP", cmdtext, true, 10) == 0) // Have Parachute
	{
	GivePlayerWeapon(playerid, 46, 1);
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/ROCKETMAN", cmdtext, true, 10) == 0) // Have Jetpack
	{
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USEJETPACK);
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/OHDUDE", cmdtext, true, 10) == 0) // Spawn Hunter
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(425, X+5, Y, Z, 0, -1, 50, -1);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/FOURWHEELFUN", cmdtext, true, 10) == 0) // Spawn Quad
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(471, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/AMOMHRER", cmdtext, true, 10) == 0) // Spawn Tanker Truck
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(514, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/ITSALLBULL", cmdtext, true, 10) == 0) // Spawn Dozer
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(486, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/FLYINGTOSTUNT ", cmdtext, true, 10) == 0) // Spawnn StuntPlane
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(513, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	if (strcmp("/MONSTERMASH ", cmdtext, true, 10) == 0) // Spawn Monster Truck
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(556, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 1;
	}
	
	// Gameplay ---------------------- [ Nothing Yet ]
	
	// Weather and time [ EVERYTHING DONE ]
 // NOTE: These commands only apply for the player who typed them.
 
	if(strcmp(cmdtext, "/PLEASANTLYWARM", true) == 0) // Sunny Weather
    {
        SetPlayerWeather(playerid, 10);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
   	if(strcmp(cmdtext, "/TOODAMNHOT", true) == 0) // Very Sunny Weather
    {
        SetPlayerWeather(playerid, 11);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
   	if(strcmp(cmdtext, "/ALNSFMZO", true) == 0) // Overcast Weather
    {
        SetPlayerWeather(playerid, 11);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
   	if(strcmp(cmdtext, "/AUIFRVQS", true) == 0) // Rainny Weather
    {
        SetPlayerWeather(playerid, 16);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
   	if(strcmp(cmdtext, "/CFVFGMJ", true) == 0) // Foggy Weather
    {
        SetPlayerWeather(playerid, 09);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
   	if(strcmp(cmdtext, "/YSOHNUL", true) == 0) // Faster Clock ------------------------ [ Not Possible ]
    {
        SendClientMessage(playerid, RED,"SERVER: This Command has been disabled");
        return 1;
    }
   	if(strcmp(cmdtext, "/NIGHTPROWLER", true) == 0) // Always Midnight  ------------------------ [ Not Possible ]
    {
        SendClientMessage(playerid, RED,"SERVER: This Command has been disabled");
        return 1;
    }
   	if(strcmp(cmdtext, "/OFVIAC", true) == 0) // Orange Sky 21:00
    {
        SetPlayerWeather(playerid, 24);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
   	if(strcmp(cmdtext, "/SCOTTISHSUMMER", true) == 0) // Thunderstorm Weather
    {
        SetPlayerWeather(playerid, 08);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
	if(strcmp(cmdtext, "/CWJXUOC", true) == 0) // Sandstorm Weather
    {
        SetPlayerWeather(playerid, 19);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 1;
    }
	return 0;
}

// Option 2 = Cheat by Text =============================================================================================== CHEAT BY TEXT
// Option 2 = Cheat by Text =============================================================================================== CHEAT BY TEXT
// ----------------------------------[NOTE]-------------------------------------
// The Entire Script From this Line until Line 918 Is the Option 2 - TEXT ONLY
	public OnPlayerText(playerid, text[])
{
    // CHEAT LIST
    if (strcmp("cheatlist", text, true, 10) == 0) // Cheatlist
	{
    ShowPlayerDialog(playerid, 30320, DIALOG_STYLE_LIST, "{00FF00}CHEAT LIST{FFFFFF}", "{00FF00}Category 1 (Weapons, Health, Armour and Money){FFFFFF} \n{00FF00}Category 2 Part 1 (Spawning Objects){FFFFFF} \n{00FF00}Category 2 Part 2 (Spawning Objects){FFFFFF} \n{00FF00}Category 3 (Time and Weather){FFFFFF}", "Select", "Exit");
	return 0;
	}
// Weapons, Health, Armor & Money

	if (strcmp("LXGIWYL", text, true, 10) == 0) // Weapon Set 1, Thug Tools
	{
	GivePlayerWeapon(playerid,27,500);
    GivePlayerWeapon(playerid,28,500);
    GivePlayerWeapon(playerid,30,500);
    GivePlayerWeapon(playerid,35,500);
    GivePlayerWeapon(playerid,18,500);
    GivePlayerWeapon(playerid,41,500);
    GivePlayerWeapon(playerid,1,500);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
    return 0;
	}
	if (strcmp("PROFESSIONALSKIT", text, true, 10) == 0) // Weapon Set 2, Professional Tools
	{
	GivePlayerWeapon(playerid,4,500);
    GivePlayerWeapon(playerid,22,500);
    GivePlayerWeapon(playerid,26,500);
    GivePlayerWeapon(playerid,32,500);
    GivePlayerWeapon(playerid,34,500);
    GivePlayerWeapon(playerid,37,500);
    GivePlayerWeapon(playerid,16,10);
    GivePlayerWeapon(playerid,42,500);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("UZUMYMW", text, true, 10) == 0) // Weapon Set 3, Nutter Tools
	{
	GivePlayerWeapon(playerid,9,500);
    GivePlayerWeapon(playerid,23,500);
    GivePlayerWeapon(playerid,27,60);
    GivePlayerWeapon(playerid,31,500);
    GivePlayerWeapon(playerid,35,500);
    GivePlayerWeapon(playerid,39,10);
    GivePlayerWeapon(playerid,40,10);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("HESOYAM", text, true, 10) == 0) // Health, Armour, +$250,000
	{
	    SetPlayerHealth(playerid, 100.0);
	    SetPlayerArmour(playerid, 100);
	    GivePlayerMoney(playerid, 250000);
	    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
		return 0;
	}
	if (strcmp("BAGUVIX", text, true, 10) == 0) // Semi-Infinite Health
	{
		SetPlayerHealth(playerid,1000);
		SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
		return 0;
	}
	if (strcmp("CVWKXAM", text, true, 10) == 0) // Infinite Oxygen
	{
	for(new j = 0;j<MAX_PLAYERS;j++)
	{
 		if(IsPlayerConnected(j))
		 {

    new Float:pos[3];
    new Float:pHealthFLOAT;

    GetPlayerPos(j, pos[0], pos[1], pos[2]);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
    if (UnderWater[j]==0){

    	if (pos[2]<-2.0){
    	GetPlayerHealth(j,pHealthFLOAT);
    	pOxygenGlobal[j]=floatround(pHealthFLOAT, floatround_tozero);
    	UnderWater[j]=1;
    	SendClientMessage(j, COLOR_WATERRR, "You are underwater!");
    	}
    }

	else

    if (UnderWater[j]==1)
	{
    	if (pos[2]>=0.0)
		{
    	new Float:pHealthFLOATOUT;

       	pHealthFLOATOUT = float(pOxygenGlobal[j]);
        SetPlayerHealth(j,pHealthFLOATOUT);
        UnderWater[j]=0;
        SendClientMessage(j, COLOR_WATERRR, "You are no longer underwater!");
    	}
		else
	SetPlayerHealth(j,1000.0);
    }

  }
		return 0;
	}
	}

	if (strcmp("ANOSEONGLASS", text, true, 10) == 0) // Adrenaline Mode ======================================== [ NOT POSSIBLE ]
	{
	    SendClientMessage(playerid, RED,"SERVER: This Command has been disabled");
		return 0;
	}
	if (strcmp("FULLCLIP", text, true, 10) == 0) // Infinite Ammo, No Reload
	{
	new weapon = GetPlayerWeapon(playerid);
    GivePlayerWeapon(playerid, weapon, 999999999);
    SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}

// [ -----------------------------------NOTE--------------------------------- ]
// Uncomment PutPlayerInVehicle(playerid,LVehicleID,0); if you want players to
// automatically enter spawned vehicles.
	if (strcmp("AIWPRTON", text, true, 10) == 0) // Spawn Rhino
	{
 	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(432, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("OLDSPEEDDEMON", text, true, 10) == 0) // Spawn Bloodring Ranger
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(504, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("JQNTDMH", text, true, 10) == 0) // Spawn Rancher
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(489, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("VROCKPOKEY", text, true, 10) == 0) // Spawn Racecar
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(502, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("VPJTQWV", text, true, 10) == 0) // Spawn Racecar
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(503, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("WHERESTHEFUNERAL", text, true, 10) == 0) // Spawn Romero
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(442, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("CELEBRITYSTATUS", text, true, 10) == 0) // Spawn Stretch
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(409, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("TRUEGRIME", text, true, 10) == 0) // Spawn Trashmaster
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(408, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("RZHSUEW", text, true, 10) == 0) // Spawn Caddy
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(457, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("JUMPJET", text, true, 10) == 0) //Spawn Hydra
 	{
 	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(520, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("KGGGDKP", text, true, 10) == 0) // Spawn Vortex Hovercraft
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(593, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("AIYPWZQP", text, true, 10) == 0) // Have Parachute
	{
	GivePlayerWeapon(playerid, 46, 1);
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("ROCKETMAN", text, true, 10) == 0) // Have Jetpack
	{
	SetPlayerSpecialAction(playerid,SPECIAL_ACTION_USEJETPACK);
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("OHDUDE", text, true, 10) == 0) // Spawn Hunter
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(425, X+5, Y, Z, 0, -1, 50, -1);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("FOURWHEELFUN", text, true, 10) == 0) // Spawn Quad
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(471, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("AMOMHRER", text, true, 10) == 0) // Spawn Tanker Truck
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(514, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("ITSALLBULL", text, true, 10) == 0) // Spawn Dozer
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(486, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("FLYINGTOSTUNT ", text, true, 10) == 0) // Spawnn StuntPlane
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(513, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}
	if (strcmp("MONSTERMASH ", text, true, 10) == 0) // Spawn Monster Truck
	{
	new LVehicleID;
 	new Float:X,Float:Y,Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	LVehicleID = CreateVehicle(556, X+5, Y, Z, 0, -1, 50, 99999999);
//	PutPlayerInVehicle(playerid,LVehicleID,0);
	SetVehicleVirtualWorld(LVehicleID, GetPlayerVirtualWorld(playerid));
	LinkVehicleToInterior(LVehicleID, GetPlayerInterior(playerid));
	SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
	return 0;
	}

	// Gameplay ---------------------- [ Nothing Yet ]

	// Weather and time [ EVERYTHING DONE ]
 // NOTE: These commands only apply for the player who typed them.

	if(strcmp(text, "PLEASANTLYWARM", true) == 0) // Sunny Weather
    {
        SetPlayerWeather(playerid, 10);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
   	if(strcmp(text, "TOODAMNHOT", true) == 0) // Very Sunny Weather
    {
        SetPlayerWeather(playerid, 11);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
   	if(strcmp(text, "ALNSFMZO", true) == 0) // Overcast Weather
    {
        SetPlayerWeather(playerid, 11);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
   	if(strcmp(text, "AUIFRVQS", true) == 0) // Rainny Weather
    {
        SetPlayerWeather(playerid, 16);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
   	if(strcmp(text, "CFVFGMJ", true) == 0) // Foggy Weather
    {
        SetPlayerWeather(playerid, 09);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
   	if(strcmp(text, "YSOHNUL", true) == 0) // Faster Clock ------------------------ [ Not Possible ]
    {
        SendClientMessage(playerid, RED,"SERVER: This Command has been disabled");
        return 0;
    }
   	if(strcmp(text, "NIGHTPROWLER", true) == 0) // Always Midnight  ------------------------ [ Not Possible ]
    {
        SendClientMessage(playerid, RED,"SERVER: This Command has been disabled");
        return 0;
    }
   	if(strcmp(text, "OFVIAC", true) == 0) // Orange Sky 21:00
    {
        SetPlayerWeather(playerid, 24);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
   	if(strcmp(text, "SCOTTISHSUMMER", true) == 0) // Thunderstorm Weather
    {
        SetPlayerWeather(playerid, 08);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
	if(strcmp("CWJXUOC", text, true, 10) == 0) // Sandstorm Weather
    {
        SetPlayerWeather(playerid, 19);
        SendClientMessage(playerid,DARKGREY,"Cheat Activated!");
        return 0;
    }
	return 1;
}


// CHEATLIST DIALOG =============================================================================================== CHEATLIST DIALOG
// CHEATLIST DIALOG =============================================================================================== CHEATLIST DIALOG
// ----------------------------------[NOTE]-------------------------------------
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
if(dialogid == 30320 && response)
{
switch(listitem)
{
case 0:
{
ShowPlayerDialog(playerid, 30321, DIALOG_STYLE_MSGBOX, "{00FF00}Category 1 (Weapons, Health, Armour and Money){FFFFFF}", "[LXGIWYL] - Thugs Tools [WS1] \n[PROFESSIONALSKIT] - Professional Tools [WS2] \n[UZUMYMW] - Nutter Tools [WS2] \n[HESOYAM] - 100 Health and 100 Armour +$250,000 \n[BAGUVIX] - 10000 Health \n[CVWKXAM] - Infinite Oxygen \n[FULLCLIP] - Infinite Ammo, No Relaod", "Exit", "");
}
case 1:
{
ShowPlayerDialog(playerid, 30322, DIALOG_STYLE_MSGBOX, "{00FF00}Category 2 Part 1 (Spawning Objects){FFFFFF}", "[AIWPRTON] - Spawn Rhino \n[OLDSPEEDDEMON]- Spawn Bloodring Banger \n[JQNTDMH] - Spawn Rancher \n[VROCKPOKEY] - Spawn Racecar \n[VPJTQWV] - Spawn Racecar \n[WHERESTHEFUNERAL] - Spawn Romero \n[CELEBRITYSTATUS] - Spawn Stretch \n[TRUEGRIME] - Spawn Trashmaster \n[RZHSUEW] - Spawn Caddy ", "Exit", "");
}
case 2:
{
ShowPlayerDialog(playerid, 30323, DIALOG_STYLE_MSGBOX, "{00FF00}Category 2 Part 2 (Spawning Objects){FFFFFF}", "[JUMPJET] - Spawn Hydra \n[KGGGDKP] - Spawn Vortex Hovercraft \n[AIYPWZQP] - Have Parachute \n[ROCKETMAN] - Have Jetpack \n[OHDUDE] - Spawn Hunter \n[FOURWHEELFUN] - Spawn Quad \n[AMOMHRER] - Spawn Tanker Truck \n[ITSALLBULL] - Spawn Dozer \n[FLYINGTOSTUNT]- Spawn Stunt Plane \n[MONSTERMASH] - Spawn Monster", "Exit", "");
}
case 3:
{
ShowPlayerDialog(playerid, 30324, DIALOG_STYLE_MSGBOX, "{00FF00}Category 3 ( Time and Weather ){FFFFFF}", "[PLEASANTLYWARM] - Sunny Weather \n[TOODAMNHOT] - Very Sunny Weather \n[ALNSFMZO] - Overcast Weather \n[AUIFRVQS] - Rainy Weather \n[CFVFGMJ] - Foggy Weather \n[OFVIAC] - Orange Sky 21:00 \n[SCOTTISHSUMMER] - Thunderstorm \n[CWJXUOC] - Sandstorm", "Exit", "");
}
}
}
return 1;
}


