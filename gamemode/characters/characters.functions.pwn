#define class characters

/*
	Characters -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	log(@Initialize, "Initializing...");

	for (i -> MAX_CHARACTERS) {
		this.Clear(i);
	}

	log(@Initialize, "Initialized.");
}

in.Deinitialize() {
	log(@Deinitialize, "Exiting...");
	log(@Deinitialize, "Exited.");
}

// ----------------------------------------------------------

in.Clear(characterid) {
	for (i -> sizeof(Characters)) {
		Characters[characterid][Character_Data:i] = 0;
	}

	Chars.Var[characterid][UID] = -1;
	Chars.Var[characterid][Connected] = false;
	Chars.Var[characterid][Health] = 0.0;
	Chars.Var[characterid][Armor] = 0.0;
	Chars.Var[characterid][Level] = 1;
	for (i -> 3) {
		Chars.Var[characterid][Pos][i] = 0.0;
	}
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
