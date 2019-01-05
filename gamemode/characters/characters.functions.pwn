#define class characters

/*
	Characters -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	log(@Init, "Initializing...");

	foreach (new playerid : Player) {
		for (i -> MAX_CHARACTERS) {
			this.Clear(playerid, i);
		}
	}

	log(@Init, "Initialized.");
}

in.Deinitialize() {
	log(@Deinitialize, "Exiting...");

	new activeCharacter = INVALID_CHARACTER_ID;
	foreach (new playerid : Player) {
		activeCharacter = Players.Var[playerid][ActiveCharacter];
		players.@Disconnect(playerid, PLAYER_DISCONNECTED_KICK_BAN);
		this.Clear(playerid, activeCharacter);
	}

	log(@Deinitialize, "Exited.");
}

// ----------------------------------------------------------

in.Clear(playerid, characterid) {
	for (i -> sizeof(Characters)) {
		Characters[playerid][characterid][Character_Data:i] = 0;
	}

	Chars.Var[playerid][characterid][ConnectedPlayerid] = INVALID_PLAYER_ID;
	Chars.Var[playerid][characterid][UID] = INVALID_CHARACTER_ID;
	Chars.Var[playerid][characterid][Connected] = false;
	Chars.Var[playerid][characterid][Health] = 0.0;
	Chars.Var[playerid][characterid][Armor] = 0.0;
	Chars.Var[playerid][characterid][Level] = 1;
	for (i -> 4) {
		Chars.Var[playerid][characterid][Pos][i] = 0.0;
	}
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
