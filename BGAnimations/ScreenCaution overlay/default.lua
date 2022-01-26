return Def.ActorFrame {
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:settext("CAUTION");
			self:diffuse(color("#78767A"));
			self:zoom(2);
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_TOP+96);
		end;
	};
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:settext("To avoid injury to yourself and to others,\nplease be careful of your surroundings and\nrefrain from playing the game recklessly.");
			self:zoom(.75);
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y+80);
		end;
	};
	LoadActor("caution")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-34);
	};
};