local t = Def.ActorFrame {};
local lang = "us";

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-63);
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+38;zoomy,-1;diffusealpha,.5;fadetop,.5;croptop,.1);
	};
	LoadActor(THEME:GetPathG("Screen_logo","copy"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-48);
	};
	LoadActor("../Arcade decorations");
};

return t