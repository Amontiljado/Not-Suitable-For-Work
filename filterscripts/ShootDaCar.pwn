// This is a comment
// uncomment the line below if you want to write a filterscript
//#define FILTERSCRIPT

#include <a_samp>

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

public OnGameModeInit()
{
	// Don't use these lines if it's a filterscript
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
	    SendClientMessage(playerid, COLOR_GREEN, "Teleport successful!");
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

//==============//
public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	if(hittype == BULLET_HIT_TYPE_VEHICLE) {
        new Float:vh;
        GetVehicleHealth(hitid,vh);
        if(GetVehicleHealth(hitid,vh) <= 0.0) {
			return 0;
		}
		
		switch(weaponid) {
		    case 25: {
			        SetVehicleHealth(hitid,vh - 100.0);
		        }
            case 24: {
	                SetVehicleHealth(hitid,vh - 20.0);
                }
            case 49: {
	                SetVehicleHealth(hitid,vh - 80.0);
                }
            case 51: {
            	   	SetVehicleHealth(hitid,vh - 100.0);
                }
            default:
	            SetVehicleHealth(hitid,vh-30.0);
		}
	}
	return 1;
}
