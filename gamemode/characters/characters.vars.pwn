#define class characters // c

/*
	Characters -> Variables
*/

// ----------------------------------------------------------

#define MAX_CHARACTERS (10)

// ----------------------------------------------------------

/*!
	- Characters Static
*/

#define Characters. Characters_
#define Character. Character_

#define CLASS_NAME Characters
#define CLASS_DATA Character

en(Data) {
   i.UID;
	 #define Character_@UID		Character_UID]

   b.Connected;
   #define Character_@Connected   Character_Connected]

   i.ConnectedPlayerid;
   #define Character_@ConnectedPlayerid     Character_ConnectedPlayerid]

   s.Name[MAX_PLAYER_NAME];
   #define Character_@Name    Character_Name]

   i.Skin;
   #define Character_@Skin    Character_Skin]

   f.Pos[4];
   #define Character_@Pos				Character_Pos]
   #define Character_Pos_@X			Character_Pos][0]
   #define Character_Pos_@Y			Character_Pos][1]
   #define Character_Pos_@Z			Character_Pos][2]
   #define Character_Pos_@R			Character_Pos][3]
   #define Character_Pos].			Character_Pos_@

   i.VirtualWorld;
   #define Character_@VirtualWorld    Character_VirtualWorld]

   i.Interior;
   #define Character_@Interior    Character_Interior]

   i.Money;
   #define Character_@Money     Character_Money]

   i.Level;
   #define Character_@Level     Character_Level]

   i.Experience;
   #define Character_@Exp   Character_Experience]

   f.Health;
   #define Character_@Health    Character_Health]

   f.Armor;
   #define Character_@Armor     Character_Armor]

   i.Job[2];
   #define Character_@Job             Character_Job]
   #define Character_Job_@ID          Character_Job][0]
   #define Character_Job_@Cooldown    Character_Job][1]
   #define Character_Job].            Character_Job_@

   i.Bank;
   #define Character_@Bank    Character_Bank]

   i.Paytime;
   #define Character_@Paytime     Character_Paytime]

   i.Deaths;
   #define Character_@Deaths    Character_Deaths]

   i.Kills;
   #define Character_@Kills     Character_Kills]
}
nw[MAX_PLAYERS][MAX_CHARACTERS]{Data};

#undef	Characters
#undef	Character

#define Chars.Var[%0][%1][%2] Characters[%0][%1][Character_@%2

#undef	CLASS_NAME
#undef	CLASS_DATA

// ----------------------------------------------------------

/*
	- End
*/

#undef class
