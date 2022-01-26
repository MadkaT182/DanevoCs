local t = Def.ActorFrame {};

if ThemePrefs.Get("DanevoBnr") then
	t[#t+1] = Def.ActorFrame {
		Def.Sprite{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-48);
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				if song then
					local topscreen = SCREENMAN:GetTopScreen();
					local MusicWheel = topscreen:GetMusicWheel();
					local bannum = math.mod(MusicWheel:GetCurrentIndex(),41);
					self:Load(THEME:GetPathG("Banner/selm_"..bannum.."_bnr",""));
				end;
			end;
		};
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	};
else
	t[#t+1] = Def.ActorFrame {
		Def.Sprite{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-48);
			SetCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local path = THEME:GetPathG("Common","fallback banner");
				if song then
					songbg = song:GetBackgroundPath();
					if songbg then
						path = songbg;
					end
					self:Load(path);
					if songbg then
						self:zoomtowidth(SCREEN_WIDTH);
						self:zoomtoheight(SCREEN_HEIGHT*.75);
						self:croptop(.24);
						self:cropbottom(.24);
						self:y(SCREEN_CENTER_Y-48);
					else
						self:zoom(1);
						self:croptop(0);
						self:cropbottom(0);
						self:playcommand("On");
					end
				else
				end
			end;
		};
		CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	};
end

return t;