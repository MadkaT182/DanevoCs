return Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffuse,Color.Black);
	};
	LoadActor(THEME:GetPathG("Loading", "spinner"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-53;spin);
	};
};