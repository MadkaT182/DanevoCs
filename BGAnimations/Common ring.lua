return Def.ActorFrame{
	LoadActor(THEME:GetPathG("Common","ring"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;diffuse,color("#3CC12388");zoom,0);
		OffCommand=cmd(linear,.833;zoom,1.5;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Common","ring"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;diffuse,color("#3CC12344");zoom,0);
		OffCommand=cmd(sleep,.3;linear,.833;zoom,1.5;diffusealpha,0);
	};
}