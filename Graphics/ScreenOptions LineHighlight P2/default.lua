return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(zoomto,SCREEN_WIDTH,20;diffusealpha,.4;fadeleft,1);
	};
	LoadFont("Common normal")..{
		Text="P2";
		OnCommand=cmd(diffuse,color("#000000");zoom,.5;x,(SCREEN_WIDTH/2)-30);
	};
};