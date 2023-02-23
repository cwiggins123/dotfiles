#ifndef CONFIG_H
#define CONFIG_H

#define MOD Mod1Mask

const char* menu[]    = {"dmenu_run",      0};
const char* term[]    = {"st",             0};
const char* scrot[]   = {"scrot",            0};
//const char* briup[]   = {"bri", "10", "+", 0};
//const char* bridown[] = {"bri", "10", "-", 0};
const char* voldown[] = {"amixer", "sset", "Master", "5%-",         0};
const char* volup[]   = {"amixer", "sset", "Master", "5%+",         0};
const char* volmute[] = {"amixer", "sset", "Master", "toggle",      0};
//const char* colors[]  = {"bud", "/home/goldie/Pictures/Wallpapers", 0};

static struct key keys[] = {
    {MOD|ControlMask,      XK_q,   win_kill,   {0}},
    {MOD|ControlMask,      XK_c,   win_center, {0}},
    {MOD|ControlMask,      XK_f,   win_fs,     {0}},

    {MOD,           XK_Tab, win_next,   {0}},
    {MOD|ShiftMask, XK_Tab, win_prev,   {0}},

    {MOD|ControlMask, XK_d,      run, {.com = menu}},
    //{MOD|ControlMask, XK_w,      run, {.com = colors}},
    {MOD|ControlMask, XK_p,      run, {.com = scrot}},
    {MOD|ControlMask, XK_t,      run, {.com = term}},

    {0,   XF86XK_AudioLowerVolume,  run, {.com = voldown}},
    {0,   XF86XK_AudioRaiseVolume,  run, {.com = volup}},
    {0,   XF86XK_AudioMute,         run, {.com = volmute}},
    //{0,   XF86XK_MonBrightnessUp,   run, {.com = briup}},
    //{0,   XF86XK_MonBrightnessDown, run, {.com = bridown}},

    {MOD|ControlMask,           XK_1, ws_go,     {.i = 1}},
    {MOD|ControlMask|ShiftMask, XK_1, win_to_ws, {.i = 1}},
    {MOD|ControlMask,           XK_2, ws_go,     {.i = 2}},
    {MOD|ControlMask|ShiftMask, XK_2, win_to_ws, {.i = 2}},
    {MOD|ControlMask,           XK_3, ws_go,     {.i = 3}},
    {MOD|ControlMask|ShiftMask, XK_3, win_to_ws, {.i = 3}},
    {MOD|ControlMask,           XK_4, ws_go,     {.i = 4}},
    {MOD|ControlMask|ShiftMask, XK_4, win_to_ws, {.i = 4}},
    {MOD|ControlMask,           XK_5, ws_go,     {.i = 5}},
    {MOD|ControlMask|ShiftMask, XK_5, win_to_ws, {.i = 5}},
    {MOD|ControlMask,           XK_6, ws_go,     {.i = 6}},
    {MOD|ControlMask|ShiftMask, XK_6, win_to_ws, {.i = 6}},
};

#endif
