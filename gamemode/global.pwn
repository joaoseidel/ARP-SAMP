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

/*
	- End
*/

// ----------------------------------------------------------
