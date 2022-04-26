return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(FullScreen;diffuse,color("#00000088"))
	};
	LoadActor("../ScreenWithMenuElements background/mainglow")..{
		OnCommand=cmd(Center;diffuseshift;effectcolor1,1,1,1,.1;effectcolor2,1,1,1,0;effectperiod,2.5;effectoffset,3);
	};
	LoadActor("../ScreenLogo overlay");
	LoadActor("../Arcade decorations");
};