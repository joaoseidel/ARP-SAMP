// ----------------------------------------------------------

/*
- Global functions, variables or macros
*/

// ---------------------------------------------------------- // Logging macros

#define log(%0,%1)		printf("[log]\t[" class.@@ "." #%0 "] " %1)
#define wrn(%0,%1)		printf("[WARNING]\t[" class.@@ "." #%0 "] " %1); SendClientMessageToAll(RED, "[WARNING!] [" class.@@ "." #%0 "]")
#define err(%0,%1)		printf("[ERROR]\t[" class.@@ "." #%0 "] " %1); SendClientMessageToAll(RED, "[ERROR!] [" class.@@ "." #%0 "]")
#define lbl(%0)			printf("[lbl]\t[%d]", %0)

// ---------------------------------------------------------- // Simple loops macros

#define for(%0->%1)		for(new %0=0;%0<%1;++%0)
#define @for(%0->%1)	for(%0=0;%0<%1;++%0)

// ----------------------------------------------------------

in.Comma(numbers) { //Credit: Gamer931215
  new temp[24],counter = -1;

  valstr(temp,numbers);

  for(new i = strlen(temp); i > 0; i--){
    counter++;

    if(counter == 3) {
      strins(temp,".",i);
      counter = 0;
    }
  }
  return temp;
}

in.PlayerName(playerid) {
	new regname[64];
	GetPlayerName(playerid,regname,sizeof(regname));
	return regname;
}

in.GetRolePlayName(playerid) {
	new proname[64];
	format(proname, sizeof(proname), "%s", PlayerName(playerid));
	for(new prename = 0; prename < MAX_PLAYER_NAME; prename++) if(proname[prename] == '_') proname[prename] = ' ';
	return proname;
}

// ----------------------------------------------------------

new g_MysqlRaceCheck[MAX_PLAYERS];

// ----------------------------------------------------------

/*
- End
*/

// ----------------------------------------------------------
