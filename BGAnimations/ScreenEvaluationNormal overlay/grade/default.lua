local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

if GAMESTATE:GetPlayMode() ~= "PlayMode_Oni" then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		local cstats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetGrade();
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetStageAward();
		local fctype = "";
		local boolfc = false;

		if staw == "StageAward_SingleDigitW3" or staw =="StageAward_OneW3" or staw =="StageAward_FullComboW3" then
			boolfc = true;
		elseif staw == "StageAward_SingleDigitW2" or staw =="StageAward_OneW2" or staw =="StageAward_FullComboW2" then
			boolfc = true;
			fctype = "Perfect";
		elseif staw == "StageAward_SingleDigitW1" or staw =="StageAward_OneW1" or staw =="StageAward_FullComboW1" then
			boolfc = true;
			fctype = "Marvelous";
		end

		t[#t+1] = Def.ActorFrame {
			InitCommand=function(self)
				self:player(player);
				self:y(SCREEN_CENTER_Y-60);
			end;
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					if players > 1 then
						self:x(player == PLAYER_1 and SCREEN_CENTER_X-85 or SCREEN_CENTER_X+275);
					else
						self:x(SCREEN_CENTER_X+95);
					end
					if cstats then
						self:Load(THEME:GetPathG("", "Grades/"..cstats));
					end
				end;
				OnCommand=cmd(diffusealpha,0;addx,-8;sleep,.433;decelerate,.167;addx,8;diffusealpha,1);
			};
		};
	end
end

return t;