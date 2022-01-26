local t = Def.ActorFrame {
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_LEFT+153;y,SCREEN_TOP+61;zoom,.86;horizalign,left;diffuse,color("#C0C2C2");maxwidth,397);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayFullTitle());
			else
				self:settext("");
			end
		end;
	};
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_LEFT+153;y,SCREEN_TOP+82;zoom,.57;horizalign,left;diffuse,color("#C0C2C2");maxwidth,598);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetDisplayArtist());
			else
				self:settext("");
			end
		end;
	};
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X+117;y,SCREEN_TOP+65;zoomto,67,14;diffuse,color("#FFFFFF"));
	};
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+85;y,SCREEN_TOP+65;zoom,.47;horizalign,left;diffuse,color("#000000");maxwidth,136);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(song:GetGenre());
			else
				self:settext("");
			end
		end;
	};
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X+117;y,SCREEN_TOP+82;zoomto,67,14;diffuse,color("#FFFFFF"));
	};
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+89;y,SCREEN_TOP+82;zoom,.47;horizalign,left;diffuse,color("#000000");maxwidth,112);
		SetCommand=function(self)
			self:settext("BPM:");
		end;
	};
	Def.BPMDisplay {
		File=THEME:GetPathF("Common", "normal");
		Name="BPMDisplay";
		InitCommand=cmd(x,SCREEN_CENTER_X+120;y,SCREEN_TOP+82;zoom,.57;horizalign,left;diffuse,color("#000000");maxwidth,112);
		SetCommand=function(self) self:SetFromGameState() end;
	};
	--P1
	-- Def.ActorFrame{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+222;y,GAMESTATE:GetNumSidesJoined()>1 and SCREEN_TOP+65 or SCREEN_TOP+82);
	-- 	Def.Quad{
	-- 		OnCommand=cmd(zoomto,124,14;diffuse,color("#8E8A8D"));
	-- 	};
	-- 	LoadActor(THEME:GetPathG("Selm","arrow"))..{
	-- 		OnCommand=cmd(x,-7;zoom,.34;diffuse,color("#000000"));
	-- 	};
	-- 	LoadFont("Common normal")..{
	-- 		Text=GAMESTATE:GetPlayerDisplayName(PLAYER_1) and GAMESTATE:GetPlayerDisplayName(PLAYER_1) or "PLAYER 1";
	-- 		OnCommand=cmd(x,-59;zoom,.5;horizalign,left;diffuse,color("#000000");maxwidth,100);
	-- 	};
	-- 	LoadFont("Common normal")..{
	-- 		OnCommand=cmd(y,-1;zoom,.5;horizalign,left;maxwidth,110;shadowlength,2);
	-- 		SetCommand=function(self)
	-- 			local selection = GAMESTATE:GetCurrentSteps(PLAYER_1);
	-- 			if selection then
	-- 				local difficulty = selection:GetDifficulty();
	-- 				self:settext(CustomDifficultyToLocalizedString(difficulty));
	-- 				self:diffuse(color(GetDifficultyColor(difficulty)));
	-- 			else
	-- 				self:settext("");
	-- 			end
	-- 		end;
	-- 	};
	-- };
	--P2
	-- Def.ActorFrame{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+222;y,SCREEN_TOP+82;player,PLAYER_2);
	-- 	Def.Quad{
	-- 		OnCommand=cmd(zoomto,124,14;diffuse,color("#8E8A8D"));
	-- 	};
	-- 	LoadActor(THEME:GetPathG("Selm","arrow"))..{
	-- 		OnCommand=cmd(x,-7;zoom,.34;diffuse,color("#000000"));
	-- 	};
	-- 	LoadFont("Common normal")..{
	-- 		Text=GAMESTATE:GetPlayerDisplayName(PLAYER_2) and GAMESTATE:GetPlayerDisplayName(PLAYER_2) or "PLAYER 2";
	-- 		OnCommand=cmd(x,-59;zoom,.5;horizalign,left;diffuse,color("#000000");maxwidth,100);
	-- 	};
	-- 	LoadFont("Common normal")..{
	-- 		OnCommand=cmd(y,-1;zoom,.5;horizalign,left;maxwidth,110;shadowlength,2);
	-- 		SetCommand=function(self)
	-- 			local selection = GAMESTATE:GetCurrentSteps(PLAYER_2);
	-- 			if selection then
	-- 				local difficulty = selection:GetDifficulty();
	-- 				self:settext(CustomDifficultyToLocalizedString(difficulty));
	-- 				self:diffuse(color(GetDifficultyColor(difficulty)));
	-- 			else
	-- 				self:settext("");
	-- 			end
	-- 		end;
	-- 	};
	-- };
	--Base meter
	LoadFont("_flame")..{
		OnCommand=cmd(player,PLAYER_1;horizalign,left;zoom,.5;x,SCREEN_LEFT+22;y,SCREEN_CENTER_Y+22);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(string.rep("0",10));
			else
				self:settext("");
			end
		end;
	};
	LoadFont("_flame")..{
		OnCommand=cmd(player,PLAYER_2;horizalign,right;zoom,.5;x,SCREEN_RIGHT-22;y,SCREEN_CENTER_Y+22);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			if song then
				self:settext(string.rep("0",10));
			else
				self:settext("");
			end
		end;
	};
	--Base meter
	LoadFont("_flame")..{
		OnCommand=cmd(horizalign,left;zoom,.5;x,SCREEN_LEFT+22;y,SCREEN_CENTER_Y+22);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local steps = GAMESTATE:GetCurrentSteps(PLAYER_1);
			if song and steps ~= nil then
				local diff = steps:GetDifficulty();
				local meter = steps:GetMeter();
				local fixmeter = 0;
				if meter > 10 then
					fixmeter = 10;
				else
					fixmeter = meter;
				end
				self:settext(string.rep("1",fixmeter));
			else
				self:settext("");
			end
		end;
	};
	LoadFont("_flame")..{
		OnCommand=cmd(horizalign,right;zoom,.5;x,SCREEN_RIGHT-22;y,SCREEN_CENTER_Y+22);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local steps = GAMESTATE:GetCurrentSteps(PLAYER_2);
			if song and steps ~= nil then
				local diff = steps:GetDifficulty();
				local meter = steps:GetMeter();
				local fixmeter = 0;
				if meter > 10 then
					fixmeter = 10;
				else
					fixmeter = meter;
				end
				self:settext(string.rep("1",fixmeter));
			else
				self:settext("");
			end
		end;
	};
	--Hard meter
	LoadFont("_flame")..{
		OnCommand=cmd(horizalign,left;zoom,.5;x,SCREEN_LEFT+22;y,SCREEN_CENTER_Y+22);
		SetCommand=function(self)
			local song = GAMESTATE:GetCurrentSong();
			local steps = GAMESTATE:GetCurrentSteps(PLAYER_1);
			if song and steps ~= nil then
				local diff = steps:GetDifficulty();
				local meter = steps:GetMeter();
				local fixmeter = 0;
				if meter > 10 then
					self:textglowmode('TextGlowMode_Inner');
					self:diffuseshift();
					self:effectcolor1(color("#FF0000"));
					self:effectcolor2(.7,.7,.7,1);
					if meter > 20 then
						fixmeter = 10;
					else
						fixmeter = meter-10;
					end
				else
					fixmeter = 0;
				end
				self:settext(string.rep("1",fixmeter));
			else
				self:settext("");
			end
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
};

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = Def.ActorFrame{
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X+222);
			if player == PLAYER_1 then
				self:y(GAMESTATE:GetNumSidesJoined()>1 and SCREEN_TOP+65 or SCREEN_TOP+82);
			else
				self:y(SCREEN_TOP+82);
			end
		end;
		Def.Quad{
			OnCommand=cmd(zoomto,124,14;diffuse,color("#8E8A8D"));
		};
		LoadActor(THEME:GetPathG("Selm","arrow"))..{
			OnCommand=cmd(x,-7;zoom,.34;diffuse,color("#000000"));
		};
		LoadFont("Common normal")..{
			Text=GAMESTATE:GetPlayerDisplayName(player) and GAMESTATE:GetPlayerDisplayName(player) or ( player == PLAYER_1 and "PLAYER 1" or "PLAYER 2");
			OnCommand=cmd(x,-59;zoom,.5;horizalign,left;diffuse,color("#000000");maxwidth,100);
		};
		LoadFont("Common normal")..{
			OnCommand=cmd(y,-1;zoom,.5;horizalign,left;maxwidth,110;shadowlength,2);
			SetCommand=function(self)
				local selection = GAMESTATE:GetCurrentSteps(player);
				if selection then
					local difficulty = selection:GetDifficulty();
					self:settext(CustomDifficultyToLocalizedString(difficulty));
					self:diffuse(color(GetDifficultyColor(difficulty)));
				else
					self:settext("");
				end
			end;
		};
	};
end

return t;