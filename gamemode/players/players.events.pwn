#define class players
#define one player

/*
	Players -> Events
*/

// ----------------------------------------------------------

cl.Connect(playerid) {
	TogglePlayerSpectating(playerid, false); // hide Spawn button

	Players.Var[playerid][Connected] = true;
}

cl.Spawn(playerid) {
	TogglePlayerSpectating(player, false); //
	return 1;
}

cl.RequestClass(playerid, classid) {
	if (!Players.Var[playerid][Connected])
		return 0;

	return 1;
}

cl.Disconnect(playerid, reason) {
	if (!Players.Var[playerid][Connected])
		return 0;

	this.Clear(player);
	return 0;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef one
#undef class
