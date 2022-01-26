return Def.CourseContentsList {
	MaxSongs=20;
	NumItemsToDraw=4;

	SetCommand=function(self)
		self:SetFromGameState();
		self:SetCurrentAndDestinationItem(3);
		self:SetPauseCountdownSeconds(1);
		self:SetSecondsPauseBetweenItems(0);
		self:SetLoop(true);
		self:SetMask(334,0);
	end;
	CurrentTrailP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentTrailP2ChangedMessageCommand=cmd(playcommand,"Set");

	Display=Def.ActorFrame{
		InitCommand=cmd(setsize,428,18);
		--Song BG
		Def.Sprite {
			SetSongCommand=function(self, params)
			self:Load(THEME:GetPathG("Course", "ItemBG"));
		end
		};
		--Song Text
		LoadFont("Common normal")..{
			InitCommand=cmd(horizalign,right;maxwidth,856);
			SetSongCommand=function(self,params)
				if params.Song then
					self:settext(params.Song:GetDisplayFullTitle());
				end;
				self:zoom(.5);
				self:x(205);
				self:diffusealpha(0);
				(cmd(finishtweening;sleep,0.125*params.Number;linear,0.13;diffusealpha,1))(self);
			end;
		};
	};
};