#define class players
#define Class Players
#define one player
#define One Player

/*
	Players -> Functions
*/

// ----------------------------------------------------------

in.Initialize() {
	/*!
		- Set global sets
	*/


	this.for {
		player.Clear(true);
	}
}

in.Deinitialize() {
	this.for {
		if(!Player.Connected)
			continue;

		player.@Disconnect(0);
	}
}

in.Clear(player, bool:init) {
	if (!init)
		return;

	Player.Connected = false;
	Player.Skin = this.DefaultSkin;
}

// ----------------------------------------------------------

/*
	- End
*/

#undef one
#undef class
