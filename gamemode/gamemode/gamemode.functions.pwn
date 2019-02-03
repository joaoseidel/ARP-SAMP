#define class gamemode

/*
	Gamemode -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	if (!this.ConnectToMysql(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DBNM))
		return 0;

	new string[32];
	format(string, sizeof(string), "hostname %s", this.name);
	SendRconCommand(string);
	format(string, sizeof(string), "%s v%i.%i.%i", this.shortcut, VERSION_MAJOR, VERSION_MINOR, VERSION_FIXES);
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
	ShowNameTags(1);
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
	SetNameTagDrawDistance(10.0);
	DisableNameTagLOS();
	UsePlayerPedAnims();
	return 1;
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
		return 0;
	}

	log(@Mysql, "Connected.");
	return 1;
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
