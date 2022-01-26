return Def.ActorFrame {
	LoadActor("filter")..{
		OnCommand=cmd(FullScreen;diffuseshift;effectcolor1,255,64,34,1;effectcolor2,255,64,34,0);
	};
	LoadActor("caution")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+22;zoomtowidth,SCREEN_WIDTH;zoomtoheight,44);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			self:customtexturerect(0,0,w,1);
			self:texcoordvelocity(0.5,0);
		end;
	};
	LoadActor("caution")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-22;zoomtowidth,SCREEN_WIDTH;zoomtoheight,44;rotationz,180);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			self:customtexturerect(0,0,w,1);
			self:texcoordvelocity(0.5,0);
		end;
	};
	OnCommand=cmd(diffusealpha,0);
	ShowDangerAllMessageCommand=cmd(stoptweening;accelerate,0.3;diffusealpha,1);
	HideDangerAllMessageCommand=cmd(stoptweening;accelerate,0.3;diffusealpha,0);
};