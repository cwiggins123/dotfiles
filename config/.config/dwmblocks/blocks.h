//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
  {"",	"price btc Bitcoin 💰 21",			9000,	21},
  {"",  "volume", 0, 10},
  {"",	"forecast",	18000,	5},
  //{"",	"battery",	5,	3},
  {"",	"clock",	60,	1},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
