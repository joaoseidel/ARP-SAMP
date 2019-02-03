#define class players

/*
	Players -> Events
*/

// ----------------------------------------------------------

cl.Connect(playerid) {
	g_MysqlRaceCheck[playerid]++; //

	TogglePlayerSpectating(playerid, false); // hide Spawn button

	this.Clear(playerid);
	this.ConnectPlayerORM(playerid);
	return 1;
}

cl.Spawn(playerid) {
	TogglePlayerSpectating(playerid, false); //
	return 1;
}

cl.RequestClass(playerid, classid) {
	if (!Players.Var[playerid][Connected])
		return 0;

	return 1;
}

cl.Disconnect(playerid, reason) {
	g_MysqlRaceCheck[playerid]++; //

	if (!Players.Var[playerid][Connected])
		return 0;

	return 0;
}

forward OnPlayerDataLoaded(playerid, race_check);
public OnPlayerDataLoaded(playerid, race_check) {
	/*	race condition check:
		player A connects -> SELECT query is fired -> this query takes very long
		while the query is still processing, player A with playerid 2 disconnects
		player B joins now with playerid 2 -> our laggy SELECT query is finally finished, but for the wrong player
		what do we do against it?
		we create a connection count for each playerid and increase it everytime the playerid connects or disconnects
		we also pass the current value of the connection count to our OnPlayerDataLoaded callback
		then we check if current connection count is the same as connection count we passed to the callback
		if yes, everything is okay, if not, we just kick the player
	*/

	if (race_check != g_MysqlRaceCheck[playerid]) {
		log(@ORM, "Faild to race check %d.", playerid);
		Kick(playerid);
		return RETURN_FALSE;
	}

	new
		playerName[MAX_PLAYER_NAME];

	GetPlayerName(playerid, playerName, sizeof(playerName));

	orm_setkey(Players.Var[playerid][ORM], "uid");

	switch (orm_errno(Players.Var[playerid][ORM])) {
		case ERROR_OK: {
			ShowDialog(playerid, Dialog);
		}
		case ERROR_NO_DATA: {
			ShowDialog(playerid, Register);
		}
	}

	log(@ORM, "Successfully loaded data %s.", PlayerName(playerid));
	return RETURN_TRUE;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
