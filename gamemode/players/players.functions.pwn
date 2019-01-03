#define class players
#define Class Players
#define one player
#define One Player

/*
	Players -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	log(@Initialize, "Initializing...");
	log(@Initialize, "Initialized.");
}

in.Deinitialize() {
	log(@Deinitialize, "Exiting...");

	for (i -> MAX_PLAYERS) {
		if (Players.Var[i][Connected])
			continue;

		class.@Disconnect(i, 0);
	}

	log(@Deinitialize, "Exited.");
}

// ----------------------------------------------------------


in.Clear(playerid) {
	Players.Var[playerid][UID] = -1;
	Players.Var[playerid][Connected] = false;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef one
#undef class
