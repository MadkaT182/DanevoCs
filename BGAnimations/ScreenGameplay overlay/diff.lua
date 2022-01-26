local t = Def.ActorFrame {};
if not GAMESTATE:IsDemonstration() then
	for player in ivalues(GAMESTATE:GetEnabledPlayers()) do
		local diff = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(player):GetDifficulty());
		t[#t+1] = Def.ActorFrame {
			InitCommand=function(self)
				self:x(player == PLAYER_1 and SCREEN_CENTER_X-326 or SCREEN_CENTER_X+326);
				self:y(SCREEN_TOP+25);
			end;
			LoadActor(THEME:GetPathG("ScreenGameplay","diffframe"));
			LoadFont("Common normal")..{
				InitCommand = function(self)
					local coldiff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
					self:settext(diff);
					self:zoom(.35);
					self:diffuse(color(GetDifficultyColor(coldiff)));
				end;
			};
			LoadFont("ScoreDisplayNormal Text")..{
				InitCommand = function(self)
					self:x(player == PLAYER_1 and 8 or -8);
					self:y(13);
					self:settext("SCORE");
					self:zoom(.61);
				end
			};
		};
	end
end
return t;