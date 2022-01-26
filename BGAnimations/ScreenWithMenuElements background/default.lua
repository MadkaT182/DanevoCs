return Def.ActorFrame {
	LoadActor("mainbg")..{
		OnCommand=cmd(FullScreen);
	};
}