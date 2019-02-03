#define class players

/*
	Players -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	log(@Init, "Initializing...");

	this.SetupTables();

	foreach (new playerid : Player) {
		this.Clear(playerid);
	}

	log(@Init, "Initialized.");
}

in.Deinitialize() {
	log(@Deinitialize, "Exiting...");

	foreach(new i : Player) {
		this.@Disconnect(i, 0);
	}

	log(@Deinitialize, "Exited.");
}

// ----------------------------------------------------------

in.Clear(playerid) {
	for (i -> sizeof(Players)) {
		Players[playerid][Player_Data:i] = 0;
	}

	format(Players.Var[playerid][Password], MAX_PASSWORD_LENGHT, "");
	format(Players.Var[playerid][Email], MAX_EMAIL_LENGHT, "");
	Players.Var[playerid][UID] = INVALID_PLAYER_UID;
	Players.Var[playerid][ORM] = ORM:INVALID_ORM_ID;
	Players.Var[playerid][ActiveCharacter] = INVALID_CHARACTER_ID;
	Players.Var[playerid][ActiveCharacterUID] = INVALID_CHARACTER_UID;
	Players.Var[playerid][Connected] = false;
}

// ----------------------------------------------------------

in.ConnectPlayerORM(playerid) {
	log(@ORM, "Loading player %s data...", PlayerName(playerid));

	new ORM:ormid = Players.Var[playerid][ORM] = orm_create("players", gamemode.mysql);

	orm_addvar_int(ormid, Players.Var[playerid][UID], "uid");
	orm_addvar_string(ormid, Players.Var[playerid][Username], MAX_PLAYER_NAME, "username");
	orm_addvar_string(ormid, Players.Var[playerid][Password], MAX_PASSWORD_LENGHT, "password");
	orm_addvar_string(ormid, Players.Var[playerid][Email], MAX_EMAIL_LENGHT, "email");
	orm_addvar_int(ormid, Players.Var[playerid][MaxCharacters], "max_characters");
	orm_addvar_int(ormid,	Players.Var[playerid][Admin], "admin");
	orm_addvar_int(ormid, Players.Var[playerid][LastLogin], "last_login");
	orm_setkey(ormid, "uid");

	// tell the orm system to load all data, assign it to our variables and call our callback when ready
	orm_load(ormid, "OnPlayerDataLoaded", "dd", playerid, g_MysqlRaceCheck[playerid]);
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
