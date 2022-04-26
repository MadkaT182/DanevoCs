local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

if GAMESTATE:GetPlayMode() ~= "PlayMode_Oni" then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		local cstats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetGrade();

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