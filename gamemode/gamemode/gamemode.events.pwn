#define class gamemode

/*
	Gamemode -> Events
*/

// ----------------------------------------------------------

cl.Init() {
	log(@Init, "Initializing...");

	this.Initialize();
	players.Initialize();

	log(@Init, "Initializing is complited.");
	return 0;
}

cl.Exit() {
	log(@Exit, "Shut down...");

	players.Deinitialize();
	this.Deinitialize();

	log(@Exit, "Exited.")
	return 0;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
