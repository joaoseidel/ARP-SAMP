#define class players

/*
Players -> Database management
*/

// ----------------------------------------------------------

in.SetupTables() {
  log(@Database, "Setting up...");

  this.SetupPlayerTable();

  log(@Database, "Completed.");
}

in.SetupPlayerTable() {
  log(@Database, "Setting up 'players' table..");
  mysql_tquery(gamemode.mysql, "CREATE TABLE IF NOT EXISTS `players`(`uid` int(11) NOT NULL AUTO_INCREMENT, `username` varchar(64) DEFAULT NULL, `password` varchar(64) DEFAULT NULL, `email` varchar(64) DEFAULT NULL, `max_characters` int(11) DEFAULT NULL, `admin` int(11) DEFAULT NULL, `last_login` int(11) DEFAULT NULL, PRIMARY KEY (`uid`), UNIQUE KEY `players_uid_uindex` (`uid`))");
  return RETURN_TRUE;
}

in.RegisterPlayer() {
  return RETURN_TRUE;
}

// ----------------------------------------------------------

/*
End
*/

#undef class
