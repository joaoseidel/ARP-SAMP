#define class players // b

/*
	Players -> Variables
*/

// ----------------------------------------------------------

#define b_DefaultSkin 0

// ----------------------------------------------------------

/*!
	- Players Static
*/

#define Players. Players_
#define Player. Player_

#define CLASS_NAME Players
#define CLASS_DATA Player

en(Data) {
	i.Connected;
	#define Player_@Connected		Player_Connected]
	
	i.Name[MAX_PLAYER_NAME + 1];
	i.Name_Length;
	#define Player_@Name			Player_Name]
	#define Player_Name_@Length		Player_Name_Length]
	#define Player_Name].			Player_Name_@
	
	i.Skin;
	#define Player_@Skin			Player_Skin]
	
	f.Pos[4];
	#define Player_@Pos				Player_Pos]
	#define Player_Pos_@X			Player_Pos][0]
	#define Player_Pos_@Y			Player_Pos][1]
	#define Player_Pos_@Z			Player_Pos][2]
	#define Player_Pos_@R			Player_Pos][3]
	#define Player_Pos].			Player_Pos_@
}
nw[MAX_PLAYERS]{Data};

#undef	Players
#undef	Player
#define Players[%0].		Players[%0][Player_@
#define	Player				Players[player]

#undef	CLASS_NAME
#undef	CLASS_DATA

// ----------------------------------------------------------

/*
	- End
*/

#undef class