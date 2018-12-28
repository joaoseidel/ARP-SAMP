#define class players // b

/*
	Players -> Macros
*/

// ----------------------------------------------------------

#define player			playerid
#define playerid.%0(%1)		players.%0(_:player,%1)

// ----------------------------------------------------------

#define b_for			for(player -> MAX_PLAYERS)

// ----------------------------------------------------------

/*!
	- Events
*/

// ----------------------------------------------------------

#define b_@Connect(%0)			OnPlayerConnect(%0)
#define b_@Spawn(%0)			OnPlayerSpawn(%0)
#define b_@Death(%0)			OnPlayerDeath(%0)
#define b_@Disconnect(%0)		OnPlayerDisconnect(%0)
#define b_@StateChange(%0)		OnPlayerStateChange(%0)
#define b_@Update(%0)			OnPlayerUpdate(%0)
#define b_@RequestClass(%0)		OnPlayerRequestClass(%0)
#define b_@CommandText(%0)		OnPlayerCommandText(%0)
#define b_@Text(%0)			OnPlayerText(%0)
#define b_@KeyStateChange(%0)		OnPlayerKeyStateChange(%0)
#define b_@StreamIn(%0)			OnPlayerStreamIn(%0)
#define b_@StreamOut(%0)		OnPlayerStreamOut(%0)
#define b_@ClickTextDraw(%0)		OnPlayerClickTextDraw(%0)

// ----------------------------------------------------------

/*
	- End
*/

#undef class
