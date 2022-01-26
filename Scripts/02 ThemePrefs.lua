local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	DanevoBnr =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	ShowCdTitle =
	{
		Default = false,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	DefSort =
	{
		Default = 0,
		Choices = { "Original", "Group", "Title", "BPM", "Popularity", "TopGrades", "Artist", "Genre" },
		Values = { 0, 1, 2, 3, 4, 5, 6, 7 }
	},
	BossLevel =
	{
		Default = 14,
		Choices = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "9999" },
		Values = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 9999 }
	},
	CboUnder =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
}

ThemePrefs.InitAll(Prefs)