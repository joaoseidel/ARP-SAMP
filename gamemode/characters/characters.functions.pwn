#define class characters

/*
	Characters -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	log(@Initialize, "Initializing...");
	log(@Initialize, "Initialized.");
}

in.Deinitialize() {
	log(@Deinitialize, "Exiting...");
	log(@Deinitialize, "Exited.");
}

// ----------------------------------------------------------

in.Clear(characterid) {
	Chars.Var[characterid][UID] = -1;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
