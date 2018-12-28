#define class gamemode

/*
	Gamemode -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	this.version[0] = VERSION_MAJOR;
	this.version[1] = VERSION_MINOR;
	this.version[2] = VERSION_FIXES;

	new mode[16];
	format(mode, sizeof(mode), "%s v%s.%s.%s", this.shortcut, this.version[0], this.version[1], this.version[2]);

	SetGameModeText(this.name);
	UsePlayerPedAnims();
	SetWorldTime(12);
}

in.Deinitialize() {

}

in.ConnectToMysql() {

}

in.DesconnectFromMysql() {

}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
