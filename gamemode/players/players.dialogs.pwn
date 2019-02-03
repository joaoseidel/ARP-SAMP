#define class players

/*
Players -> Events
*/

// ----------------------------------------------------------

CreateDialog:Register(playerid, style, caption[], info[], button1[], button2[]) {
  style = DIALOG_STYLE_INPUT;
  caption = "Registre-se";
  button1 = "Registrar";
  button2 = "Cancelar";
  format(info, sizeof(info), "Fala, %s! Parece que você ainda não tem uma conta.\n\nDigite uma senha super secreta abaixo:", PlayerName(playerid));
}

Dialog:Register(playerid, dialogid, response, listitem, inputtext[]) {
  if (!response) {
    log(@Register, "%s has kicked from registration dialog.", PlayerName(playerid));
    Kick(playerid);
  }


  return true;
}

// ----------------------------------------------------------

/*
End
*/

#undef class
