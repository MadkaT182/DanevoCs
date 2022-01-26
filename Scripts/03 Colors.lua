function GetDifficultyColor(difficulty)
	local Colors = {
		["Difficulty_Beginner"] = "#6B7A7D",
		["Difficulty_Easy"] = "#77C423",
		["Difficulty_Medium"] = "#0791C7",
		["Difficulty_Hard"] = "#C16117",
		["Difficulty_Challenge"] = "#DEC526",
		["Difficulty_Edit"] = "#FFFFFF",
	}
	local Color = Colors[difficulty] or "#FFFFFF";
	return Color;
end