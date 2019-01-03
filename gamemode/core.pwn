// ----------------------------------------------------------

/*
	- Core
*/

// ----------------------------------------------------------

main() return;

// ----------------------------------------------------------

#include "gamemode/classes.pwn"
#include "gamemode/constants.pwn"
#include "gamemode/config.pwn"

// ----------------------------------------------------------

#define global.
#define float:		Float:

// ----------------------------------------------------------

#define in.%0(%1)		%0(%1)
#define sn.%0(%1)		%0(%1)
#define tn.%0:%1(%2)	%0:%1(%2)
#define fn.%0(%1)		float:%0(%1)
#define bn.%0(%1)		bool:%0(%1)

#define is.%0(%1)		stock %0(%1)
#define ss.%0(%1)		stock %0(%1)
#define ts.%0:%1(%2)	stock %0:%1(%2)
#define fs.%0(%1)		stock float:%0(%1)
#define bs.%0(%1)		stock bool:%0(%1)

#define ip.%0(%1)		forward %0(%1); public %0(%1)
#define tp.%0:%1(%2)	forward %0:%1(%2); public %0:%1(%2)
#define fp.%0(%1)		forward float:%0(%1); public float:%0(%1)
#define bp.%0(%1)		forward bool:%0(%1); public bool:%0(%1)

//-----------------------------------------------------------

#include "gamemode/global.pwn"

//-----------------------------------------------------------

#undef in
#undef sn
#undef tn
#undef fn
#undef bn

#undef is
#undef ss
#undef ts
#undef fs
#undef bs

#undef ip
#undef tp
#undef fp
#undef bp

// ----------------------------------------------------------

#define this		class

// ----------------------------------------------------------

#define en(%0)		enum CLASS_DATA.%0
#define nw%0{%1}	new CLASS_NAME%0[CLASS_DATA.%1]
#define i.%0;		CLASS_DATA.%0,
#define s.%0;   CLASS_DATA.%0,
#define b.%0;		bool:CLASS_DATA.%0,
#define f.%0;		float:CLASS_DATA.%0,

// ----------------------------------------------------------

/*
	- Vars
*/

#include "gamemode/gamemode/gamemode.vars.pwn"
#include "gamemode/players/players.vars.pwn"

// ----------------------------------------------------------

#undef	en
#undef	nw
#undef	i
#undef  s
#undef	b
#undef	f

// ----------------------------------------------------------

/*
	- Macros
*/

#include "gamemode/gamemode/gamemode.macro.pwn"
#include "gamemode/players/players.macro.pwn"

//-----------------------------------------------------------

#define _:%0,)	%0)

//-----------------------------------------------------------

#define in.%0(%1)		class.%0(%1)
#define sn.%0(%1)		class.%0(%1)
#define tn.%0:%1(%2)	%0:class.%1(%2)
#define fn.%0(%1)		float:class.%0(%1)
#define bn.%0(%1)		bool:class.%0(%1)

#define is.%0(%1)		stock class.%0(%1)
#define ss.%0(%1)		stock class.%0(%1)
#define ts.%0:%1(%2)	stock %0:class.%1(%2)
#define fs.%0(%1)		stock float:class.%0(%1)
#define bs.%0(%1)		stock bool:class.%0(%1)

#define ip.%0(%1)		forward class.%0(%1); public class.%0(%1)
#define tp.%0:%1(%2)	forward %0:class.%1(%2); public %0:class.%1(%2)
#define fp.%0(%1)		forward float:class.%0(%1); public float:class.%0(%1)
#define bp.%0(%1)		forward bool:class.%0(%1); public bool:class.%0(%1)

#define case.%0:	case %0.@:

//-----------------------------------------------------------

/*
	- Functions
*/

#include "gamemode/gamemode/gamemode.functions.pwn"
#include "gamemode/players/players.functions.pwn"

//-----------------------------------------------------------

#undef in
#undef sn
#undef tn
#undef fn
#undef bn

#undef is
#undef ss
#undef ts
#undef fs
#undef bs

#undef ip
#undef tp
#undef fp
#undef bp

//-----------------------------------------------------------

#define in.%0(%1)		class.@%0(%1)
#define sn.%0(%1)		class.@%0(%1)
#define tn.%0:%1(%2)	%0:class.@%1(%2)
#define fn.%0(%1)		float:class.@%0(%1)
#define bn.%0(%1)		bool:class.@%0(%1)

#define is.%0(%1)		stock class.@%0(%1)
#define ss.%0(%1)		stock class.@%0(%1)
#define ts.%0:%1(%2)	stock %0:class.@%1(%2)
#define fs.%0(%1)		stock float:class.@%0(%1)
#define bs.%0(%1)		stock bool:class.@%0(%1)

#define ip.%0(%1)		forward class.@%0(%1); public class.@%0(%1)
#define tp.%0:%1(%2)	forward %0:class.@%1(%2); public %0:class.@%1(%2)
#define fp.%0(%1)		forward float:class.@%0(%1); public float:class.@%0(%1)
#define bp.%0(%1)		forward bool:class.@%0(%1); public bool:class.@%0(%1)

#define cl.%0(%1)	public class.@%0(%1)

//-----------------------------------------------------------

/*
	- Events
*/

#include "gamemode/gamemode/gamemode.events.pwn"
#include "gamemode/players/players.events.pwn"

//-----------------------------------------------------------

#undef in
#undef sn
#undef tn
#undef fn
#undef bn

#undef is
#undef ss
#undef ts
#undef fs
#undef bs

#undef ip
#undef tp
#undef fp
#undef bp

#undef cl

//-----------------------------------------------------------

#define in.%0(%1)		%0(%1)
#define sn.%0(%1)		%0(%1)
#define tn.%0:%1(%2)	%0:%1(%2)
#define fn.%0(%1)		float:%0(%1)
#define bn.%0(%1)		bool:%0(%1)

#define is.%0(%1)		stock %0(%1)
#define ss.%0(%1)		stock %0(%1)
#define ts.%0:%1(%2)	stock %0:%1(%2)
#define fs.%0(%1)		stock float:%0(%1)
#define bs.%0(%1)		stock bool:%0(%1)

#define ip.%0(%1)		forward %0(%1); public %0(%1)
#define tp.%0:%1(%2)	forward %0:%1(%2); public %0:%1(%2)
#define fp.%0(%1)		forward float:%0(%1); public float:%0(%1)
#define bp.%0(%1)		forward bool:%0(%1); public bool:%0(%1)

#define cl.%0(%1)		public %0(%1)

// ----------------------------------------------------------

/*
	- End
*/

// ----------------------------------------------------------
