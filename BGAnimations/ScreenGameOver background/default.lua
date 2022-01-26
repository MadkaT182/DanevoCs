return Def.ActorFrame {
	SOUND:PlayAnnouncer("game over");
	LoadActor("background")..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor("gameover")..{
		OnCommand=cmd(Center);
	};
}