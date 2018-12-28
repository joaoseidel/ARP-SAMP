#define class players
#define Class Players
#define one player
#define One Player

/*
	Players -> Functions
*/

// ----------------------------------------------------------

is.Initialize() {
	/*!
		- Set global sets
	*/

	DisableInteriorEnterExits();
	EnableStuntBonusForAll(0);
	ShowPlayerMarkers(1);
	ShowNameTags(0);
	UsePlayerPedAnims();

	/*!
		- ������� ������ �������
	*/

	this.for
	{
		player.Clear(true);
	}
}

is.Deinitialize() {
	this.for {
		if(!Player.Connected)
		{
			continue;
		}

		player.@Disconnect(0);
	}
}

// ----------------------------------------------------------

is.Clear(player, bool:init) {
	Player.Connected = false;
	Player.Skin = this.DefaultSkin;
}

// ----------------------------------------------------------



// ----------------------------------------------------------

/*
	����� �����
*/

#undef one
#undef class
