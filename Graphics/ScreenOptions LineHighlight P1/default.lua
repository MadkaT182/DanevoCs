return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(zoomto,SCREEN_WIDTH,20;diffusealpha,.4;faderight,1);
	};
	LoadFont("Common normal")..{
		Text="P1";
		OnCommand=cmd(diffuse,color("#000000");zoom,.5;x,-(SCREEN_WIDTH/2)+30);
	};
};