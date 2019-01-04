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

   s.Name[MAX_PLAYER_NAME];
   #define Character_@Name    Character_Name]

   i.Skin;
   #define Character_@Skin    Character_Skin]

   f.Position[4];
   #define Character_@Pos   Character_Position]

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

   i.JobID;
   #define Character_@Job@ID    Character_JobID]

   i.JobCooldown;
   #define Character_@Job@Cooldown    Character_JobCooldown]

   i.Bank;
   #define Character_@Bank    Character_Bank]

   i.Paytime;
   #define Character_@Paytime     Character_Paytime]

   i.Deaths;
   #define Character_@Deaths    Character_Deaths]

   i.Kills;
   #define Character_@Kills     Character_Kills]
}
nw[MAX_CHARACTERS]{Data};

#undef	Characters
#undef	Character

#define Chars.Var[%0][%1] Characters[%0][Character_%1]

#undef	CLASS_NAME
#undef	CLASS_DATA

// ----------------------------------------------------------

/*
	- End
*/

#undef class
