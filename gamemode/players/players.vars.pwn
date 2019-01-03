#define class players // b

/*
	Players -> Variables
*/

// ----------------------------------------------------------

#define MAX_PASSWORD_LENGHT (64)
#define MAX_EMAIL_LENGHT (64)

// ----------------------------------------------------------

/*!
	- Players Static
*/

#define Players. Players_
#define Player. Player_

#define CLASS_NAME Players
#define CLASS_DATA Player

en(Data) {
	i.UID;
	#define Player_@UID		Player_UID]

	b.Connected;
	#define Player_@Connected		Player_Connected]

	s.Username[MAX_PLAYER_NAME];
	#define Player_@Username		Player_Username]

	s.Password[MAX_PASSWORD_LENGHT]; // inacessável, por isso não tem define;

	s.Email[MAX_EMAIL_LENGHT];
	#define Player_@Email		Player_Email]

	i.ActiveCharacterUID;
	#define Player_@ActiveCharacterUID		Player_ActiveCharacterUID]

	i.MaxCharacters;
	#define Player_@MaxCharacters		Player_MaxCharacters]

	i.Admin;
	#define Player_@Admin		Player_Admin]

	i.LastLogin;
	#define Player_@LastLogin		Player_LastLogin]
}
nw[MAX_PLAYERS]{Data};

#undef	Players
#undef	Player

#define Players.Var[%0][%1] Players[%0][Player_%1]

#undef	CLASS_NAME
#undef	CLASS_DATA

// ----------------------------------------------------------

/*
	- End
*/

#undef class
