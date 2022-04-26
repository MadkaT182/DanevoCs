local rTime = THEME:GetMetric("ScreenGameplay","MinSecondsToMusic");

return Def.ActorFrame {
	LoadActor(THEME:GetPathG("","lifebar"));
	LoadActor("diff");
	Def.ActorFrame{
		OnCommand=cmd(x,-SCREEN_WIDTH;y,SCREEN_BOTTOM-54;linear,.567;x,SCREEN_LEFT+320;sleep,rTime;linear,.567;x,-SCREEN_WIDTH);
		LoadActor(THEME:GetPathG("Song","Frame"));
		LoadActor(THEME:GetPathG("Deco","Note"))..{
			OnCommand=cmd(x,-276;y,-13;diffusealpha,0;sleep,.567;linear,.5;diffusealpha,1);
		};
		LoadFont("Common normal")..{
			OnCommand=function(self)
				local Song = GAMESTATE:GetCurrentSong();
				self:settext(Song:GetDisplayFullTitle());
				self:horizalign(left);
				self:zoom(.6);
				self:x(-266);
				self:y(-12);
			end;
		};
		LoadFont("Common normal")..{
			OnCommand=function(self)
				local Song = GAMESTATE:GetCurrentSong();
				self:settext(Song:GetDisplayArtist());
				self:horizalign(left);
				self:zoom(.5);
				self:x(-266);
				self:y(13);
				self:diffusealpha(0);
				self:sleep(.567);
				self:diffusealpha(1);
			end;
		};
	};
};