#define class players

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

	foreach (Player, i) {
		this.@Disconnect(i, 0);
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

#undef class
