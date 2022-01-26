return Def.ActorFrame {
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_RIGHT;sleep,.133;decelerate,.667;x,SCREEN_LEFT+50);
		LoadFont("Common normal")..{
			OnCommand=function(self)
				self:horizalign(left);
				self:settext("DANCE MODE");
				self:zoom(.57);
				self:diffuse(color("#78767A"));
				self:x(SCREEN_LEFT+51);
				self:y(SCREEN_BOTTOM-95);
			end;
		};
		LoadFont("Common normal")..{
			OnCommand=function(self)
				self:horizalign(left);
				self:settext("RESULTS");
				self:diffuse(color("#78767A"));
				self:x(SCREEN_LEFT+50);
				self:y(SCREEN_BOTTOM-67);
			end;
		};
	};
	LoadFont("Common normal")..{
		OnCommand=function(self)
			self:horizalign(left);
			self:settext("Check your stats.");
			self:zoom(.64);
			self:x(SCREEN_LEFT+48);
			self:y(SCREEN_BOTTOM-34);
		end;
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor("songdata");
	LoadActor("stats");
	LoadActor("grade");
	LoadActor(THEME:GetPathB("Common","ring"));
}