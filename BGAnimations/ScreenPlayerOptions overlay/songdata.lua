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
	OnCommand=cmd(playcommand,"Set");
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