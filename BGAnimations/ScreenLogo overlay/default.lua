local t = Def.ActorFrame {};
local lang = THEME:GetCurLanguage() == "ja" and "jp" or "us";

t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-63;zoom,1.5;diffuse,color("#FF00FF");blend,'BlendMode_Add';diffusealpha,0;queuecommand,'Wait');
			WaitCommand=cmd(sleep,5;queuecommand,'Rnd');
			RndCommand=function(self)
				self:sleep(math.random(.034,1));
				self:x(math.floor(math.random(-SCREEN_WIDTH,SCREEN_WIDTH)));
				self:y(math.floor(math.random(-SCREEN_HEIGHT,SCREEN_HEIGHT)));
				self:diffusealpha(1);
				self:sleep(.1);
				self:diffusealpha(0);
				self:queuecommand('RWait');
			end;
			RWaitCommand=cmd(sleep,math.random(1,3);queuecommand,'Rnd');
			OffCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-63;zoom,1.5;diffuse,color("#0369E5");blend,'BlendMode_Add';diffusealpha,0;queuecommand,'Wait');
			WaitCommand=cmd(sleep,5;queuecommand,'Rnd');
			RndCommand=function(self)
				self:sleep(math.random(.034,1));
				self:x(math.floor(math.random(-SCREEN_WIDTH,SCREEN_WIDTH)));
				self:y(math.floor(math.random(-SCREEN_HEIGHT,SCREEN_HEIGHT)));
				self:diffusealpha(1);
				self:sleep(.1);
				self:diffusealpha(0);
				self:queuecommand('RWait');
			end;
			RWaitCommand=cmd(sleep,math.random(1,3);queuecommand,'Rnd');
			OffCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-63;zoom,1;diffuse,color("#0369E5");blend,'BlendMode_Add';diffusealpha,0;queuecommand,'Wait');
			WaitCommand=cmd(sleep,3;queuecommand,'Rnd');
			RndCommand=function(self)
				self:sleep(math.random(.034,1));
				self:x(math.floor(math.random(-SCREEN_WIDTH,SCREEN_WIDTH)));
				self:y(math.floor(math.random(-SCREEN_HEIGHT,SCREEN_HEIGHT)));
				self:diffusealpha(1);
				self:sleep(.1);
				self:diffusealpha(0);
				self:queuecommand('RWait');
			end;
			RWaitCommand=cmd(sleep,math.random(1,2);queuecommand,'Rnd');
			OffCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-63;zoom,1;diffuse,color("#FF00FF");blend,'BlendMode_Add';diffusealpha,0;queuecommand,'Wait');
			WaitCommand=cmd(sleep,4;queuecommand,'Rnd');
			RndCommand=function(self)
				self:sleep(math.random(.034,1));
				self:x(math.floor(math.random(-SCREEN_WIDTH,SCREEN_WIDTH)));
				self:y(math.floor(math.random(-SCREEN_HEIGHT,SCREEN_HEIGHT)));
				self:diffusealpha(1);
				self:sleep(.1);
				self:diffusealpha(0);
				self:queuecommand('RWait');
			end;
			RWaitCommand=cmd(sleep,math.random(1,2);queuecommand,'Rnd');
			OffCommand=cmd(stoptweening;diffusealpha,0);
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-63);
	};
	LoadActor(THEME:GetPathG("Screen_logo",lang))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+38;zoomy,-1;diffusealpha,.5;fadetop,.5;croptop,.1);
	};
	LoadActor(THEME:GetPathG("Screen_logo","copy"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-48);
	};
	LoadActor("../Arcade decorations");
};

return t