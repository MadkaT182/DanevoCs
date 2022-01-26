return Def.ActorFrame {
	LoadActor("banner")..{
		OnCommand=cmd(x,SCREEN_LEFT-SCREEN_WIDTH;diffusealpha,0;linear,.734;x,SCREEN_LEFT;diffusealpha,1);
		OffCommand=cmd(linear,.233;x,SCREEN_LEFT-SCREEN_WIDTH;diffusealpha,0);
	};
}