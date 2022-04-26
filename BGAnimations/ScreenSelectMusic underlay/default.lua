return Def.ActorFrame {
	LoadActor("banner")..{
		OnCommand=cmd(x,SCREEN_LEFT-SCREEN_WIDTH;diffusealpha,0;decelerate,.734;x,SCREEN_LEFT;diffusealpha,1);
		OffCommand=cmd(accelerate,.233;x,SCREEN_LEFT-SCREEN_WIDTH;diffusealpha,0);
	};
	Def.ActorFrame{
		OnCommand=cmd(Center;x,-SCREEN_WIDTH;addy,62;decelerate,.734;x,SCREEN_CENTER_X);
		Def.Quad{
			OnCommand=cmd(zoomto,164,46;diffuse,color("#00FFFF");blend,'BlendMode_Add';queuecommand,'Anim');
			AnimCommand=cmd(diffusealpha,0;sleep,.566;x,-10;y,-10;diffusealpha,1;sleep,.1;diffusealpha,0;sleep,.1;diffusealpha,1;sleep,.1;diffusealpha,0;sleep,.667;x,10;y,10;diffusealpha,1;sleep,.1;diffusealpha,0;sleep,.3;x,10;y,-10;diffusealpha,1;sleep,.1;diffusealpha,0;queuecommand,'Wait');
			WaitCommand=cmd(sleep,5;queuecommand,'Rnd');
			RndCommand=function(self)
				self:sleep(math.random(.3,1));
				self:x(math.floor(math.random(0,2)) == 1 and 10 or -10);
				self:y(math.floor(math.random(0,2)) == 1 and 10 or -10);
				self:diffusealpha(1);
				self:sleep(.1);
				self:diffusealpha(0);
				self:queuecommand('RWait');
			end;
			RWaitCommand=cmd(sleep,math.random(1,3);queuecommand,'Rnd');
			OffCommand=cmd(stoptweening;diffusealpha,0);
		};
		Def.Quad{
			OnCommand=cmd(zoomto,164,46;diffuse,color("#FF00FF");blend,'BlendMode_Add';queuecommand,'Anim');
			AnimCommand=cmd(diffusealpha,0;sleep,.633;x,10;y,10;diffusealpha,1;sleep,.1;diffusealpha,0;sleep,1;x,-10;y,10;diffusealpha,1;sleep,.1;diffusealpha,0;queuecommand,'Wait');
			WaitCommand=cmd(sleep,5;queuecommand,'Rnd');
			RndCommand=function(self)
				self:sleep(math.random(.3,1));
				self:x(math.floor(math.random(0,2)) == 1 and 10 or -10);
				self:y(math.floor(math.random(0,2)) == 1 and 10 or -10);
				self:diffusealpha(1);
				self:sleep(.1);
				self:diffusealpha(0);
				self:queuecommand('RWait');
			end;
			RWaitCommand=cmd(sleep,math.random(1,3);queuecommand,'Rnd');
			OffCommand=cmd(stoptweening;diffusealpha,0);
		};
	};
}