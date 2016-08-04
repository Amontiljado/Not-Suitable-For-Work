// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>
#include "../include/gl_common.inc"

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
	print("\n--------------------------------------");
	print(" Blank Filterscript by your name here");
	print("--------------------------------------\n");
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}

#else

main()
{
	print("\n----------------------------------");
	print(" Blank Gamemode by your name here");
	print("----------------------------------\n");
}

#endif

new isGrantedModeOn = false;

//WA
new PELLET_COUNT = 10;

enum DamageSize {
	DEFAULT = 25.0,
	
	COLT45 = 15.0,
	SILENCED = 12.0,
	DEAGLE = 46.0,
	
	TEC9 = 12.0,
	UZI = 10.0,
	MP5 = 25.0,
	
	//todo check pellets count
	SHOTGUN = 75.0, 	// 10/pellet
	SAWEDOFF = 78.0,    // 10/pellet
	SPAS = 80.0,        // 15/pellet
	
	AK47 = 30.0,
	M4A1 = 30.0,
	
	RIFLE = 75.0,
	SNIPER_RIFLE = 125.0,
	MINIGUN = 140.0,
	
	//todo add custom damage from splash/fire
	FLAMETHROWER = 25.0,
	ROCKETLAUNCHER = 75.0,
	HEATSEEKER = 75.0
};

#define WEAPON_ID_GRENADE 16
#define WEAPON_ID_MOLOTOV 18
	
#define WEAPON_ID_VEHICLE_MISSILE 19
#define WEAPON_ID_HYDRA_FLARE 20
#define WEAPON_ID_JETPACK 21
	
#define WEAPON_ID_COLT45 22
#define WEAPON_ID_SILENCED 23
#define WEAPON_ID_DEAGLE 24
#define WEAPON_ID_SHOTGUN 25
#define WEAPON_ID_SAWEDOFF 26
#define WEAPON_ID_SPAS 27
#define WEAPON_ID_UZI 28
#define WEAPON_ID_MP5 29
#define WEAPON_ID_AK47 30
#define WEAPON_ID_M4A1 31
#define WEAPON_ID_TEC9 32
#define WEAPON_ID_RIFLE 33
#define WEAPON_ID_SNIPER_RIFLE 34
#define WEAPON_ID_ROCKETLAUNCHER 35
#define WEAPON_ID_HEATSEEKER 36
#define WEAPON_ID_FLAMETHROWER 37
#define WEAPON_ID_MINIGUN 38
#define WEAPON_ID_EXPLOSIVE_CHARGES 39
	//it's really need?
	//DETONATOR = 40,
	
	//todo check
#define WEAPON_ID_VEHICLE 49
#define WEAPON_ID_HELI_BLADES 50
#define WEAPON_ID_EXPLOSION 51
#define WEAPON_ID_DROWN 53
#define WEAPON_ID_COLLISION 54


public OnGameModeInit()
{
	SetGameModeText("Test mode");
	AddPlayerClass(0, 1958.3783, 1343.1572, 15.3746, 269.1425, 0, 0, 0, 0, 0, 0);
	
	return 1;
}

public OnGameModeExit()
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetPlayerPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraPos(playerid, 1958.3783, 1343.1572, 15.3746);
	SetPlayerCameraLookAt(playerid, 1958.3783, 1343.1572, 15.3746);
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerSpawn(playerid)
{
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	return 1;
}

public OnVehicleDeath(vehicleid, killerid)
{
	return 1;
}

public OnPlayerText(playerid, text[])
{
	return 1;
}

#define COLOR_GREEN 0x00FF00FF
#define COLOR_RED 0xFF0000FF
#define COLOR_BLUE 0x0000FFFF
stock GetPlayerIdFromName(playername[])
{
	for(new i = 0; i <= MAX_PLAYERS; i++)
  	{
    	if(IsPlayerConnected(i))
    	{
	      	new playername2[MAX_PLAYER_NAME];
		    GetPlayerName(i, playername2, sizeof(playername2));
	      	if(strcmp(playername2, playername, true, strlen(playername)) == 0)
	      	{
	        	return i;
	      	}
  		}
  	}
  	return INVALID_PLAYER_ID;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
//	if (strcmp("/getpos ", cmdtext, true, 8) == 0 || strcmp("getpos", cmdtext, true, 7) == 0)
//	{
//	    new Float:x = 0;
//		new Float:y = 0;
//		new Float:z = 0;
//	    GetPlayerPos(playerid, x, y, z);
//	    print("");
//	    new xStr[32];
//		new yStr[32];
//		new zStr[32];
//	    format( xStr, sizeof xStr, "%.4f", x);
//	    format( yStr, sizeof yStr, "%.4f", y);
//	    format( zStr, sizeof zStr, "%.4f", z);
//
//	    new result[150] = "Position: x";
//	    strcat(result, xStr);
//   	    strcat(result, "; y:");
//	    strcat(result, yStr);
//   	    strcat(result, "; z:");
//	    strcat(result, zStr);
//
//	    SendClientMessage(playerid, COLOR_GREEN, result);
//	    return 1;
//	}
	if(strcmp("/mg", cmdtext, true, 3) == 0) {
	    if(isGrantedModeOn) {
	    	new mGunAmmoAmount = 300;
		    new mGunId = 38;
	        GivePlayerWeapon(playerid, mGunId, mGunAmmoAmount);
        	SetPlayerArmedWeapon(playerid, mGunId);
        	isGrantedModeOn = !isGrantedModeOn;
        }
        return 1;
	}
	if(strcmp("/stinger", cmdtext, true, 6) == 0) {
	    if(isGrantedModeOn) {
	    	new stingerAmmoAmount = 15;
		    new stingerId = 36;
	        GivePlayerWeapon(playerid, stingerId, stingerAmmoAmount);
        	SetPlayerArmedWeapon(playerid, stingerId);
        	isGrantedModeOn = !isGrantedModeOn;
        }
        return 1;
	}
	if(strcmp("/sudo", cmdtext, true, 5) == 0) {
//	    isGrantedModeOn = true;
		isGrantedModeOn = !isGrantedModeOn;
		return 1;
	}
	if (strcmp("/pos", cmdtext, true, 4) == 0 || strcmp("pos", cmdtext, true, 3) == 0)
	{
	    new Float:x = 0;
		new Float:y = 0;
		new Float:z = 0;
	    GetPlayerPos(playerid, x, y, z);
	    new xStr[32];
		new yStr[32];
		new zStr[32];
	    format( xStr, sizeof xStr, "%.4f", x);
	    format( yStr, sizeof yStr, "%.4f", y);
	    format( zStr, sizeof zStr, "%.4f", z);

	    new result[150] = "Position: x";
	    strcat(result, xStr);
   	    strcat(result, "; y:");
	    strcat(result, yStr);
   	    strcat(result, "; z:");
	    strcat(result, zStr);

	    SendClientMessage(playerid, COLOR_GREEN, result);
	    return 1;
	}
	if (strfind(cmdtext, "/tp ", true, 0) == 0)
	{
	    new startIndex = 3;

	    if(startIndex == strlen(cmdtext) - 1) {
            SendClientMessage(playerid, COLOR_RED, "Player name not found!");
	        return 1;
		}
		
	    new playerName[128];
	    strmid(playerName, cmdtext, startIndex + 1, strlen(cmdtext), sizeof playerName);
	    new anotherPlayerID = GetPlayerIdFromName(playerName);

	    if(anotherPlayerID == INVALID_PLAYER_ID) {
            SendClientMessage(playerid, COLOR_RED, "Invalid player name!");
            return 0;
		}
	    new Float:x = 0;
		new Float:y = 0;
		new Float:z = 0;

	    if(!GetPlayerPos(anotherPlayerID, x, y, z)) {
		    SendClientMessage(playerid, COLOR_RED, "Player not in game or has not coordinates!");
            return 0;
		}
		new interior = GetPlayerInterior(anotherPlayerID);
		
		if(interior != 0) {
			SetPlayerInterior(playerid, interior);
		}
		
		SetPlayerPos(playerid, x + 1, y, z + 0.5);    //todo set into interior, into vehicle and check textures
	    SendClientMessage(playerid, COLOR_GREEN, "Teleportation successful!");
	    return 1;
	}
	return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	return 1;
}

public OnPlayerEnterCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveCheckpoint(playerid)
{
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
	return 1;
}

public OnRconCommand(cmd[])
{
	return 1;
}

public OnPlayerRequestSpawn(playerid)
{
	return 1;
}

public OnObjectMoved(objectid)
{
	return 1;
}

public OnPlayerObjectMoved(playerid, objectid)
{
	return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
	return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
	return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
	return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
	return 1;
}

public OnPlayerSelectedMenuRow(playerid, row)
{
	return 1;
}

public OnPlayerExitedMenu(playerid)
{
	return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}

public OnRconLoginAttempt(ip[], password[], success)
{
	return 1;
}

public OnPlayerUpdate(playerid)
{
	return 1;
}

public OnPlayerStreamIn(playerid, forplayerid)
{
	return 1;
}

public OnPlayerStreamOut(playerid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	return 1;
}

//public OnPlayerDamage(&playerid, &Float:amount, &issuerid, &weapon, &bodypart) {
//	return 1;
//}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	//if(isGrantedModeOn) {
	//    new output[128];
	//    format(output, sizeof(output), "Weapon id: %d", weaponid);
	//    SendClientMessage(playerid, COLOR_BLUE, output);
	//}
	if(hittype == BULLET_HIT_TYPE_VEHICLE) {
        new Float:vh, Float:baseDamage;
        GetVehicleHealth(hitid,vh);
        if(GetVehicleHealth(hitid,vh) <= 0.0) {
			return 0;
		}
		
		switch(weaponid) {
			case WEAPON_COLT45: {
				baseDamage = 15.0;
			}
			case WEAPON_SILENCED: {
				baseDamage = 12.0;
			}
			case WEAPON_DEAGLE: {
				baseDamage = 46.0;
			}
			case WEAPON_TEC9: {
				baseDamage = 12.0;
			}
			case WEAPON_UZI: {
				baseDamage = 10.0;
			}
			case WEAPON_MP5: {
				baseDamage = 25.0;
			}
			case WEAPON_AK47: {
				baseDamage = 30.0;
			}
			case WEAPON_M4: {
				baseDamage = 30.0;
			}
			case WEAPON_RIFLE: {
				baseDamage = 75.0;
			}
			case WEAPON_ID_SNIPER_RIFLE: {
				baseDamage = 125.0;
			}
			case WEAPON_MINIGUN: {
				baseDamage = 140.0;
			}
			case WEAPON_ID_FLAMETHROWER: {
				baseDamage = 25.0;
			}
			case WEAPON_ROCKETLAUNCHER: {
				baseDamage = 75.0;
			}
			case WEAPON_HEATSEEKER: {
				baseDamage = 75.0;
			}
			case WEAPON_SHOTGUN: {
                baseDamage = 75.0;
			}
			case WEAPON_SAWEDOFF: {
                baseDamage = 78.0;
			}
			case WEAPON_SHOTGSPA: {
				baseDamage = 80.0;
			}
            default:
				baseDamage = 25.0;
		}
		
//		new Float:damage = baseDamage;
		SetVehicleHealth(hitid, vh - baseDamage);
	}
	return 1;
}
