#define class gamemode

/*
	Gamemode -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	this.ConnectToMysql(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DBNM);

	this.version[0] = VERSION_MAJOR;
	this.version[1] = VERSION_MINOR;
	this.version[2] = VERSION_FIXES;

	new string[32];
	format(string, sizeof(string), "hostname %s", this.name);
	SendRconCommand(string);
	format(string, sizeof(string), "%s v%i.%i.%i", this.shortcut, this.version[0], this.version[1], this.version[2]);
	SetGameModeText(string);
	format(string, sizeof(string), "language %s", this.language);
	SendRconCommand(string);
	format(string, sizeof(string), "mapname %s", this.mapname);
	SendRconCommand(string);
	format(string, sizeof(string), "weburl %s", this.weburl);
	SendRconCommand(string);

	SetWorldTime(12);
	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0);
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
	ShowNameTags(1);
	SetNameTagDrawDistance(10.0);
	UsePlayerPedAnims();
}

in.Deinitialize() {
	this.DesconnectFromMysql();
}

in.ConnectToMysql(const host[], const user[], const password[], const dbname[]) {
	log(@Mysql, "Trying to connect...");

	new MySQLOpt: option_id = mysql_init_options();

	mysql_set_option(option_id, AUTO_RECONNECT, true);

	this.mysql = mysql_connect(host, user, password, dbname, option_id);

	if (this.mysql == MYSQL_INVALID_HANDLE || mysql_errno(this.mysql) != 0)	{
		err(@Mysql, "Failed to connect.");
		SendRconCommand("exit");
		return;
	}

	log(@Mysql, "Connected.");
}

in.DesconnectFromMysql() {
	log(@Mysql, "Disconnecting...");
	mysql_close(this.mysql);
	log(@Mysql, "Disconnected.");
}

// ----------------------------------------------------------

/*
	- End
*/

#undef class
