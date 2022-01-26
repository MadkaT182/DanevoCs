return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,Color.Black;diffusealpha,0;sleep,.233;linear,.467;diffusealpha,.74;sleep,2.933;diffusealpha,0;sleep,.33;linear,.467;diffusealpha,1;sleep,.167);
	};
	LoadActor(THEME:GetPathG("ScreenEvaluation","FrameBg"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-47;diffusealpha,0;sleep,.233;linear,.3;diffusealpha,1;sleep,3.1;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("ScreenEvaluation","Scanline"))..{
		OnCommand=cmd(x,SCREEN_RIGHT+SCREEN_WIDTH/2;y,SCREEN_CENTER_Y-140;sleep,.234;linear,.9;x,SCREEN_LEFT-SCREEN_WIDTH/2);
	};
	LoadActor(THEME:GetPathG("ScreenEvaluation","Scanline"))..{
		OnCommand=cmd(zoomx,-1;x,SCREEN_LEFT-SCREEN_WIDTH/2;y,SCREEN_CENTER_Y+47;sleep,.234;linear,.9;x,SCREEN_RIGHT+SCREEN_WIDTH/2);
	};
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:Center();
			self:addx(-267);
			self:addy(-71);
			self:settext("Saving game data\nDo not turn off the Xbox 360 console or disconnect the storage device\nduring the save operation, as this may corrupt the data.");
			self:horizalign(left);
			self:zoom(.64);
			self:diffusealpha(0);
			self:sleep(.5);
			self:diffusealpha(1);
			self:sleep(3.133);
			self:diffusealpha(0);
		end;
	};
};