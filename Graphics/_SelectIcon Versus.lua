return Def.ActorFrame {
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+25);
		LoadActor("Versus")..{
			OnCommand=cmd(zoomy,.75;diffusealpha,.25);
		};
		LoadActor("Versus")..{
			OnCommand=cmd(zoomy,.75);
			GainFocusCommand=cmd(stoptweening;diffusealpha,0;linear,.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		};
		LoadFont("Common normal")..{
			Text="VERSUS";
			OnCommand=cmd(x,SCREEN_WIDTH/2.5;y,50);
			GainFocusCommand=cmd(stoptweening;diffusealpha,0;linear,.5;diffusealpha,1);
			LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
		};
	};
};