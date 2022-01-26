local t = Def.ActorFrame {};
local lang = "us";

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = Def.ActorFrame {
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:settext("DEMONSTRATION");
			self:zoom(.8);
			self:x(SCREEN_CENTER_X);
			self:y(SCREEN_CENTER_Y+121);
		end;
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-73;zoom,.459);
	};
};

return t