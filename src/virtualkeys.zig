const std = @import("std");
const windows = std.os.windows;
const WORD = windows.WORD;

/// https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
pub const VirtualKey = enum(WORD) {
  ///	Left mouse button
  LBUTTON = 0x01,

  ///	Right mouse button
  RBUTTON = 0x02,

  ///	Control-break processing
  CANCEL = 0x03,

  ///	Middle mouse button (three-button mouse)
  MBUTTON = 0x04,

  ///	X1 mouse button
  XBUTTON1 = 0x05,

  ///	X2 mouse button
  XBUTTON2 = 0x06,

  ///	Undefined
  Undefined = 0x07,

  ///	BACKSPACE key
  BACK = 0x08,

  ///	TAB key
  TAB = 0x09,

  ///	Reserved
  /// 0x0A-0B,

  ///	CLEAR key
  CLEAR = 0x0C,

  ///	ENTER key
  RETURN = 0x0D,

  ///	Undefined
  /// 0x0E-0F,

  ///	SHIFT key
  SHIFT = 0x10,

  ///	CTRL key
  CONTROL = 0x11,

  ///	ALT key
  MENU = 0x12,

  ///	PAUSE key
  PAUSE = 0x13,

  ///	CAPS LOCK key
  CAPITAL = 0x14,

  ///	IME Kana mode | IME Hanguel mode (maintained for compatibility; use HANGUL) | IME Hangul mode
  KANA_HANGUEL_HANGUL = 0x15,

  ///	IME On
  IME_ON = 0x16,

  ///	IME Junja mode
  JUNJA = 0x17,

  ///	IME final mode
  FINAL = 0x18,

  ///	IME Hanja mode
  /// HANJA = 0x19,

  ///	IME Kanji mode | IME Hanja mode
  KANJI_HANJA = 0x19,

  ///	IME Off
  IME_OFF = 0x1A,

  ///	ESC key
  ESCAPE = 0x1B,

  ///	IME convert
  CONVERT = 0x1C,

  ///	IME nonconvert
  NONCONVERT = 0x1D,

  ///	IME accept
  ACCEPT = 0x1E,

  ///	IME mode change request
  MODECHANGE = 0x1F,

  ///	SPACEBAR
  SPACE = 0x20,

  ///	PAGE UP key
  PRIOR = 0x21,

  ///	PAGE DOWN key
  NEXT = 0x22,

  ///	END key
  END = 0x23,

  ///	HOME key
  HOME = 0x24,

  ///	LEFT ARROW key
  LEFT = 0x25,

  ///	UP ARROW key
  UP = 0x26,

  ///	RIGHT ARROW key
  RIGHT = 0x27,

  ///	DOWN ARROW key
  DOWN = 0x28,

  ///	SELECT key
  SELECT = 0x29,

  ///	PRINT key
  PRINT = 0x2A,

  ///	EXECUTE key
  EXECUTE = 0x2B,

  ///	PRINT SCREEN key
  SNAPSHOT = 0x2C,

  ///	INS key
  INSERT = 0x2D,

  ///	DEL key
  DELETE = 0x2E,

  ///	HELP key
  HELP = 0x2F,

  ///	0 key
  KEY_0 = 0x30,

  ///	1 key
  KEY_1 = 0x31,

  ///	2 key
  KEY_2 = 0x32,

  ///	3 key
  KEY_3 = 0x33,

  ///	4 key
  KEY_4 = 0x34,

  ///	5 key
  KEY_5 = 0x35,

  ///	6 key
  KEY_6 = 0x36,

  ///	7 key
  KEY_7 = 0x37,

  ///	8 key
  KEY_8 = 0x38,

  ///	9 key
  KEY_9 = 0x39,

  ///	Undefined
  /// = 0x3A-40,

  ///	A key
  KEY_A = 0x41,

  ///	B key
  KEY_B = 0x42,

  ///	C key
  KEY_C = 0x43,

  ///	D key
  KEY_D = 0x44,

  ///	E key
  KEY_E = 0x45,

  ///	F key
  KEY_F = 0x46,

  ///	G key
  KEY_G = 0x47,

  ///	H key
  KEY_H = 0x48,

  ///	I key
  KEY_I = 0x49,

  ///	J key
  KEY_J = 0x4A,

  ///	K key
  KEY_K = 0x4B,

  ///	L key
  KEY_L = 0x4C,

  ///	M key
  KEY_M = 0x4D,

  ///	N key
  KEY_N = 0x4E,

  ///	O key
  KEY_O = 0x4F,

  ///	P key
  KEY_P = 0x50,

  ///	Q key
  KEY_Q = 0x51,

  ///	R key
  KEY_R = 0x52,

  ///	S key
  KEY_S = 0x53,

  ///	T key
  KEY_T = 0x54,

  ///	U key
  KEY_U = 0x55,

  ///	V key
  KEY_V = 0x56,

  ///	W key
  KEY_W = 0x57,

  ///	X key
  KEY_X = 0x58,

  ///	Y key
  KEY_Y = 0x59,

  ///	Z key
  KEY_Z = 0x5A,

  ///	Left Windows key (Natural keyboard)
  LWIN = 0x5b,

  ///	Right Windows key (Natural keyboard)
  RWIN = 0x5C,

  ///	Applications key (Natural keyboard)
  APPS = 0x5D,

  ///	Reserved
  /// 0x5E,

  ///	Computer Sleep key
  SLEEP = 0x5F,

  ///	Numeric keypad 0 key
  NUMPAD0 = 0x60,

  ///	Numeric keypad 1 key
  NUMPAD1 = 0x61,

  ///	Numeric keypad 2 key
  NUMPAD2 = 0x62,

  ///	Numeric keypad 3 key
  NUMPAD3 = 0x63,

  ///	Numeric keypad 4 key
  NUMPAD4 = 0x64,

  ///	Numeric keypad 5 key
  NUMPAD5 = 0x65,

  ///	Numeric keypad 6 key
  NUMPAD6 = 0x66,

  ///	Numeric keypad 7 key
  NUMPAD7 = 0x67,

  ///	Numeric keypad 8 key
  NUMPAD8 = 0x68,

  ///	Numeric keypad 9 key
  NUMPAD9 = 0x69,

  ///	Multiply key
  MULTIPLY = 0x6A,

  ///	Add key
  ADD = 0x6B,

  ///	Separator key
  SEPARATOR = 0x6C,

  ///	Subtract key
  SUBTRACT = 0x6D,

  ///	Decimal key
  DECIMAL = 0x6E,

  ///	Divide key
  DIVIDE = 0x6F,

  ///	F1 key
  F1 = 0x70,

  ///	F2 key
  F2 = 0x71,

  ///	F3 key
  F3 = 0x72,

  ///	F4 key
  F4 = 0x73,

  ///	F5 key
  F5 = 0x74,

  ///	F6 key
  F6 = 0x75,

  ///	F7 key
  F7 = 0x76,

  ///	F8 key
  F8 = 0x77,

  ///	F9 key
  F9 = 0x78,

  ///	F10 key
  F10 = 0x79,

  ///	F11 key
  F11 = 0x7A,

  ///	F12 key
  F12 = 0x7B,

  ///	F13 key
  F13 = 0x7C,

  ///	F14 key
  F14 = 0x7D,

  ///	F15 key
  F15 = 0x7E,

  ///	F16 key
  F16 = 0x7F,

  ///	F17 key
  F17 = 0x80,

  ///	F18 key
  F18 = 0x81,

  ///	F19 key
  F19 = 0x82,

  ///	F20 key
  F20 = 0x83,

  ///	F21 key
  F21 = 0x84,

  ///	F22 key
  F22 = 0x85,

  ///	F23 key
  F23 = 0x86,

  ///	F24 key
  F24 = 0x87,

  ///	Unassigned
  /// 0x88-8F,

  ///	NUM LOCK key
  NUMLOCK = 0x90,

  ///	SCROLL LOCK key
  SCROLL = 0x91,

  ///	OEM specific
  /// OEM_SPECIFIC = 0x92-96,

  ///	Unassigned
  /// 0x97-9F,

  ///	Left SHIFT key
  LSHIFT = 0xA0,

  ///	Right SHIFT key
  RSHIFT = 0xA1,

  ///	Left CONTROL key
  LCONTROL = 0xA2,

  ///	Right CONTROL key
  RCONTROL = 0xA3,

  ///	Left ALT key
  LMENU = 0xA4,

  ///	Right ALT key
  RMENU = 0xA5,

  ///	Browser Back key
  BROWSER_BACK = 0xA6,

  ///	Browser Forward key
  BROWSER_FORWARD = 0xA7,

  ///	Browser Refresh key
  BROWSER_REFRESH = 0xA8,

  ///	Browser Stop key
  BROWSER_STOP = 0xA9,

  ///	Browser Search key
  BROWSER_SEARCH = 0xAA,

  ///	Browser Favorites key
  BROWSER_FAVORITES = 0xAB,

  ///	Browser Start and Home key
  BROWSER_HOME = 0xAC,

  ///	Volume Mute key
  VOLUME_MUTE = 0xAD,

  ///	Volume Down key
  VOLUME_DOWN = 0xAE,

  ///	Volume Up key
  VOLUME_UP = 0xAF,

  ///	Next Track key
  MEDIA_NEXT_TRACK = 0xB0,

  ///	Previous Track key
  MEDIA_PREV_TRACK = 0xB1,

  ///	Stop Media key
  MEDIA_STOP = 0xB2,

  ///	Play/Pause Media key
  MEDIA_PLAY_PAUSE = 0xB3,

  ///	Start Mail key
  LAUNCH_MAIL = 0xB4,

  ///	Select Media key
  LAUNCH_MEDIA_SELECT = 0xB5,

  ///	Start Application 1 key
  LAUNCH_APP1 = 0xB6,

  ///	Start Application 2 key
  LAUNCH_APP2 = 0xB7,

  ///	Reserved
  /// 0xB8-B9,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ';:' key
  OEM_1 = 0xBA,

  ///	For any country/region, the '+' key
  OEM_PLUS = 0xBB,

  ///	For any country/region, the ',' key
  OEM_COMMA = 0xBC,

  ///	For any country/region, the '-' key
  OEM_MINUS = 0xBD,

  ///	For any country/region, the '.' key
  OEM_PERIOD = 0xBE,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the '/?' key
  OEM_2 = 0xBF,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the '`~' key
  OEM_3 = 0xC0,

  ///	Reserved
  /// 0xC1-D7,

  ///	Unassigned
  /// 0xD8-DA,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the '[{' key
  OEM_4 = 0xDB,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the '\|' key
  OEM_5 = 0xDC,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the ']}' key
  OEM_6 = 0xDD,

  ///	Used for miscellaneous characters; it can vary by keyboard. For the US standard keyboard, the 'single-quote/double-quote' key
  OEM_7 = 0xDE,

  ///	Used for miscellaneous characters; it can vary by keyboard.
  OEM_8 = 0xDF,

  ///	Reserved
  /// 0xE0,

  ///	OEM specific
  /// 0xE1,

  ///	The <> keys on the US standard keyboard, or the \\| key on the non-US 102-key keyboard
  OEM_102 = 0xE2,

  ///	OEM specific
  /// 0xE3-E4,

  ///	IME PROCESS key
  PROCESSKEY = 0xE5,

  ///	OEM specific
  /// 0xE6,

  ///	Used to pass Unicode characters as if they were keystrokes. The PACKET key is the low word of a 32-bit Virtual Key value used for non-keyboard input methods. For more information, see Remark in KEYBDINPUT, SendInput, WM_KEYDOWN, and WM_KEYUP
  PACKET = 0xE7,

  ///	Unassigned
  /// 0xE8,

  ///	OEM specific
  /// 0xE9-F5,

  ///	Attn key
  ATTN = 0xF6,

  ///	CrSel key
  CRSEL = 0xF7,

  ///	ExSel key
  EXSEL = 0xF8,

  ///	Erase EOF key
  EREOF = 0xF9,

  ///	Play key
  PLAY = 0xFA,

  ///	Zoom key
  ZOOM = 0xFB,

  ///	Reserved
  NONAME = 0xFC,

  ///	PA1 key
  PA1 = 0xFD,

  ///	Clear key
  OEM_CLEAR = 0xFE,

  _,
};
