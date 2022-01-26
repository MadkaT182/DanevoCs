local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:horizalign(left);
			self:settext("COURSE MODE");
			self:zoom(.57);
			self:diffuse(color("#78767A"));
			self:x(SCREEN_LEFT+51);
			self:y(SCREEN_BOTTOM-95);
		end;
	};
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:horizalign(left);
			self:settext("SELECT COURSE");
			self:diffuse(color("#78767A"));
			self:x(SCREEN_LEFT+50);
			self:y(SCREEN_BOTTOM-67);
		end;
	};
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:horizalign(left);
			self:settext("Can you keep dancing to the end?");
			self:zoom(.64);
			self:x(SCREEN_LEFT+48);
			self:y(SCREEN_BOTTOM-34);
		end;
	};
	LoadActor("coursedata");
	LoadActor("courselist")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+133;y,SCREEN_CENTER_Y-15);
	};
	--Arrows
	LoadActor(THEME:GetPathG("Selm","arrow"))..{
		OnCommand=cmd(zoomx,-1;x,SCREEN_CENTER_X-99;y,SCREEN_CENTER_Y+62;bob;effectmagnitude,-5,0,0);
	};
	LoadActor(THEME:GetPathG("Selm","arrow"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+99;y,SCREEN_CENTER_Y+62;bob;effectmagnitude,5,0,0);
	};
};

return t