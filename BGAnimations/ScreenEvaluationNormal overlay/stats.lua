local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	--Vars
	local Score = string.format("% 7d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetScore());
	local Combo = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetCurrentCombo();
	local Marvelous = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W1"));
	local Perfect = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W2"));
	local Great = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W3"));
	local Good = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W4"));
	local Ok = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_Held"));
	local Miss = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_Miss"));
	local Almost = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W5"));
	local NG = string.format("% 5d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_LetGo"));

	local NewRec = false;

	--New record definition
	if (STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPersonalHighScoreIndex() == 0) or (STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetMachineHighScoreIndex() == 0) then
		NewRec = true;
	end

	t[#t+1] = Def.ActorFrame{
		--Stats BG
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y-60);
			if players > 1 then
				self:x(player == PLAYER_1 and SCREEN_CENTER_X-180 or SCREEN_CENTER_X+180);
			else
				self:x(SCREEN_CENTER_X);
			end
		end;
		LoadActor(THEME:GetPathG("ScreenEvaluation","ScoreFrame"))..{
			InitCommand=function(self)
				self:diffusealpha(.75);
			end;
		};
		--Player label
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:settext(player == PLAYER_1 and "PLAYER 1" or "PLAYER 2");
				self:zoom(.45);
				self:x(-140);
				self:y(-79);
				self:diffuse(color("#BDBCBE"));
			end;
		};
		--Stats
		--Score
		LoadFont("Common normal")..{
			Text="SCORE";
			InitCommand=cmd(x,-155;y,-58;zoom,.65;horizalign,left;diffuse,color("#BDBCBE"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(-58);
				self:zoom(.65);
				self:horizalign(right);
				self:diffuse(color("#BDBCBE"));
				self:settext(Score);
			end;
		};
		LoadFont("Common normal")..{
			Text="COMBO";
			InitCommand=cmd(x,-155;y,-38;zoom,.65;horizalign,left;diffuse,color("#BDBCBE"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(-38);
				self:zoom(.65);
				self:horizalign(right);
				self:diffuse(color("#BDBCBE"));
				self:settext(Combo);
			end;
		};
		LoadFont("Common normal")..{
			Text="MARVELOUS!";
			InitCommand=cmd(x,-156;y,-20;zoom,.55;horizalign,left);
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(-20);
				self:zoom(.55);
				self:horizalign(right);
				self:settext(Marvelous);
			end;
		};
		LoadFont("Common normal")..{
			Text="PERFECT";
			InitCommand=cmd(x,-156;y,-4;zoom,.55;horizalign,left;diffuse,color("#FFFF80"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(-4);
				self:zoom(.55);
				self:horizalign(right);
				self:diffuse(color("#FFFF80"));
				self:settext(Perfect);
			end;
		};
		LoadFont("Common normal")..{
			Text="GREAT";
			InitCommand=cmd(x,-156;y,12;zoom,.55;horizalign,left;diffuse,color("#80FF80"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(12);
				self:zoom(.55);
				self:horizalign(right);
				self:diffuse(color("#80FF80"));
				self:settext(Great);
			end;
		};
		LoadFont("Common normal")..{
			Text="GOOD";
			InitCommand=cmd(x,-156;y,28;zoom,.55;horizalign,left;diffuse,color("#66EEFC"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(28);
				self:zoom(.55);
				self:horizalign(right);
				self:diffuse(color("#66EEFC"));
				self:settext(Good);
			end;
		};
		LoadFont("Common normal")..{
			Text="BOO";
			InitCommand=cmd(x,-156;y,44;zoom,.55;horizalign,left;diffuse,color("#F8656D"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(44);
				self:zoom(.55);
				self:horizalign(right);
				self:diffuse(color("#F8656D"));
				self:settext(Almost);
			end;
		};
		LoadFont("Common normal")..{
			Text="MISS";
			InitCommand=cmd(x,-156;y,60;zoom,.55;horizalign,left;diffuse,color("#FF0000"));
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(60);
				self:zoom(.55);
				self:horizalign(right);
				self:diffuse(color("#FF0000"));
				self:settext(Miss+NG);
			end;
		};
		LoadFont("Common normal")..{
			Text="OK";
			InitCommand=cmd(x,-156;y,76;zoom,.55;horizalign,left);
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:x(13);
				self:y(76);
				self:zoom(.55);
				self:horizalign(right);
				self:settext(Ok);
			end;
		};
		LoadFont("Common normal")..{
			InitCommand=function(self)
				self:settext("It's a New Record!");
				self:y(-56);
				self:x(33);
				self:horizalign(left);
				self:zoom(.45);
				self:diffuseshift();
				self:effectcolor1(1,1,1,1);
				self:effectcolor2(1,1,1,0);
			end;
			Condition=NewRec;
		};
		--Stars
		LoadFont("_stars")..{
			InitCommand=function(self)
				self:settext(string.rep("0",5));
				self:horizalign(left);
				self:y(42);
				self:x(59);
			end;
		};
		LoadFont("_stars")..{
			InitCommand=function(self)
				local percent = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentDancePoints()*100;
				local stars = 100 - math.floor(percent)-5;
				if stars < 0 then
					self:settext(string.rep("1",math.abs(stars)));
					self:horizalign(left);
					self:y(42);
					self:x(59);
				end
			end;
		};
		--Graph
		LoadActor(THEME:GetPathG("ScreenEvaluation","GraphFrame"))..{
			InitCommand=cmd(x,8;y,120);
		};
		Def.GraphDisplay{
			InitCommand=cmd(x,21;y,121),
			BeginCommand=function(self)
				self:Load("GraphDisplay")
				local playerStageStats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player)
				local stageStats = STATSMAN:GetCurStageStats()
				self:Set(stageStats, playerStageStats)
			end
		};
	};

end

return t;