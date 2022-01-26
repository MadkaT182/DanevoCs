local t = Def.ActorFrame {};
local lang = "us";

if THEME:GetCurLanguage() == "ja" then
	lang = "jp";
end;

t[#t+1] = Def.ActorFrame {
	LoadActor(lang.."wego")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-24;zoom,2.18;diffusealpha,.75;linear,.153;zoom,.97;linear,.034;zoom,1;diffusealpha,1;sleep,.7;linear,.267;diffusealpha,.1;zoom,1.5;sleep,0;diffusealpha,0);
	};
	LoadActor(lang.."wego")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-24;diffusealpha,0;sleep,.887;diffusealpha,.5;linear,.267;diffusealpha,.1;zoom,2;sleep,0;diffusealpha,0);
	};
};

return t;