#define class gamemode

/*
	Gamemode -> Events
*/

// ----------------------------------------------------------

cl.Init() {
	log(@Init, "Initializing...");

	if (!this.Initialize()) // always first
	 	return 0;

	players.Initialize();
	characters.Initialize();

	log(@Init, "Initializing is complited.");
	return 0;
}

cl.Exit() {
	log(@Exit, "Shut down...");

	players.Deinitialize();
	characters.Deinitialize();
	
	this.Deinitialize(); // always last one

	log(@Exit, "Exited.");
	return 0;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
