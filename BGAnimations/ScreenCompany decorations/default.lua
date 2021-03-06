return Def.ActorFrame {
	LoadActor("bgm")..{
		OnCommand=cmd(play);
		OffCommand=cmd(stop);
	};
	Def.Quad{
		OnCommand=cmd(diffuse,Color.White;FullScreen);
	};
	LoadActor("konami")..{
		InitCommand=cmd(Center;sleep,2.3;decelerate,.3;diffusealpha,0);
	};
	LoadActor("eamuse")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,2.6;decelerate,.5;diffusealpha,1;sleep,1.6;decelerate,.433;diffusealpha,0);
	};
	LoadActor("bemani")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,5.266;decelerate,.9;diffusealpha,1;sleep,1.634;decelerate,.466;diffusealpha,0);
	};
	LoadActor("rsa")..{
		InitCommand=cmd(Center;diffusealpha,0;sleep,8.4;decelerate,.466;diffusealpha,1;sleep,1.6;decelerate,0.434;diffusealpha,0);
	};
}