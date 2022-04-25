//==== Staterpack Made By Stephen ====//
       Credit Script : Stephen
    Script Support Gamemode Inferno
Jangan dijual apalagi upload ke youtube 
          Thankyou so much!
//===================================//

//enum pInfo
pStaterPack,

//OnGameModeInit
CreateDynamic3DTextLabel("/staterpack",COLOR_WHITE, 1749.21, -1863.38, 13.8751, 5.0);
CreateDynamicPickup(1239, 23, 1749.21, -1863.38, 13.8751, -1);

//CMD
CMD:staterpack(playerid, params[])
{
	if(!IsPlayerInRangeOfPoint(playerid, 3.0, 1749.21, -1863.38, 13.8751)) return SendClientMessage(playerid, COLOR_RED, "[ERROR] Anda Tidak Berada Di Tempat Pengambilan Staterpack!");

	if(PlayerInfo[playerid][pStaterpack] == 1) return SendClientMessage(playerid, COLOR_RED, "Anda telah mengambil Staterpack!!!");
	
    SendClientMessage(playerid, COLOR_YELLOW, "Anda berhasil mendapatkan Staterpack");
    PlayerInfo[playerid][pCash] += 150000;
	GivePlayerMoney(playerid, 150000);
	OnPlayerUpdateAccountsPer(playerid, "pCash", PlayerInfo[playerid][pCash]);
	PlayerInfo[playerid][pStaterpack] = 1;
	OnPlayerUpdateAccountsPer(playerid, "pStaterpack", PlayerInfo[playerid][pStaterpack]);
	return 1;
}

//OnPlayerLoadAccounts
cache_get_value_int(0, "pStaterpack", PlayerInfo[playerid][pStaterpack]);

//==== INFORMASI ====//
Oiya jangan lupa tambahin pStaterpack di database , bagian accounts.
Untuk lokasi pengeclaiman staterpack ada di stasiun los santos
//==== END ====//
