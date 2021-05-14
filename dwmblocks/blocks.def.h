//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
		{"| ",	"~/.config/statusbar/volume",	    1,	10},
		{"",    "~/.config/statusbar/backlight",    1,  10},
		{"",	"~/.config/statusbar/battery",	    5,	 3},
		{"",	"~/.config/statusbar/memory",	    10,	14},
        {"",    "~/.config/statusbar/cpubars",      5,  14},
        {"",    "~/.config/statusbar/cpu",          5,  14},
		{"",	"~/.config/statusbar/internet",	    5,	 4},
		{"",	"~/.config/statusbar/weather",	18000,   5},
		{"",	"~/.config/statusbar/clock",	    60,	 1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
