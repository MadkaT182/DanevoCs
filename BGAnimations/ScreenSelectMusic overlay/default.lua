return Def.ActorFrame {
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_RIGHT;sleep,.133;decelerate,.667;x,SCREEN_LEFT+50);
		OffCommand=cmd(accelerate,.233;x,SCREEN_LEFT-SCREEN_WIDTH);
		LoadFont("Common normal")..{
			OnCommand=function(self)
				self:horizalign(left);
				self:settext("DANCE MODE");
				self:zoom(.57);
				self:diffuse(color("#78767A"));
				self:x(SCREEN_LEFT+50);
				self:y(SCREEN_BOTTOM-95);
			end;
		};
		LoadFont("Common normal")..{
			OnCommand=function(self)
				self:horizalign(left);
				self:settext("SELECT MUSIC");
				self:diffuse(color("#78767A"));
				self:x(SCREEN_LEFT+50);
				self:y(SCREEN_BOTTOM-67);
			end;
		};
	};
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:horizalign(left);
			self:settext("Select the song to play.");
			self:zoom(.64);
			self:x(SCREEN_LEFT+48);
			self:y(SCREEN_BOTTOM-34);
		end;
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor("songdata");
	LoadActor(THEME:GetPathG("Selm","arrow"))..{
		OnCommand=cmd(zoomx,-1;x,SCREEN_CENTER_X-99;y,SCREEN_CENTER_Y+62;bob;effectmagnitude,-5,0,0);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Selm","arrow"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+99;y,SCREEN_CENTER_Y+62;bob;effectmagnitude,5,0,0);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_LEFT+84;y,SCREEN_CENTER_Y-96);
		Condition=ThemePrefs.Get("ShowCdTitle")
	};
	LoadActor(THEME:GetPathB("Common","ring"));
};