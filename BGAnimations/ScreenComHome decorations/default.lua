return Def.ActorFrame {
	Def.Quad{
		OnCommand=cmd(diffuse,Color.Black;FullScreen);
	};
	LoadActor("esrb")..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-11;diffusealpha,0;sleep,2.59;decelerate,.476;diffusealpha,1;sleep,4.034;linear,.46;diffusealpha,0);
	};
	LoadActor("konami")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,8.19;decelerate,.97;diffusealpha,1;sleep,2.073;decelerate,.933;diffusealpha,0);
	};
}