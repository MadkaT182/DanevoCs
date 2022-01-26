local t = Def.ActorFrame {};

for player in ivalues(GAMESTATE:GetEnabledPlayers()) do

t[#t+1] = Def.ActorFrame {
	InitCommand=function(self)
		if player == PLAYER_1 then
			self:x(-243);
		else
			self:x(243);
			self:zoomx(-1);
		end;
		self:y(SCREEN_TOP+11);
	end;
	Def.ActorFrame{
		Def.Quad{
			OnCommand=cmd(zoomto,247,13;diffuse,color("#2E2E2E"));
		};
		Def.Quad{
			OnCommand=cmd(zoomto,247,13;diffuse,color("#2E2E2E");glowblink;effectcolor1,1,1,1,0;effectcolor2,1,1,1,.5;effectperiod,.075;diffusealpha,0);
			HealthStateChangedMessageCommand=function(self, param)
				if param.PlayerNumber == player then
					if param.HealthState == "HealthState_Hot" then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end;
				end;
			end;
		};
		Def.Quad{
			OnCommand=cmd(zoomto,245,11;diffuse,color("#131313"));
		};
	};
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#DBDBDB"));
			self:zoomto(243,9);
			self:cropright(1);
			self:linear(1);
			self:diffuse(color("#80FF80"));
			self:cropright(.5);
		end;
		LifeChangedMessageCommand=function(self,param)
			if param.Player == player then
				self:stoptweening();
				if param.LifeMeter:IsInDanger() then
					self:diffusealpha(0);
				else
					self:diffusealpha(1);
				end
				local pLife = param.LifeMeter:GetLife();
				local lifeColor = "#131313";
				self:linear(.1);
				if pLife == 1 then
					lifeColor = "#FEFEFE";
				elseif pLife < 1 and pLife > .66 then
					lifeColor = "#66EEFC";
				elseif pLife < .66 and pLife > .21 then
					lifeColor = "#80FF80";
				elseif pLife < .31 and pLife > 0 then
					lifeColor = "#F8656D";
				end
				self:diffuse(color(lifeColor));
				self:linear(.3);
				self:cropright(1-pLife+.025);
				self:linear(.1);
				self:cropright(1-pLife);
			end
		end;
		OffCommand=cmd(visible,false);
	};
	Def.Quad{
		InitCommand=function(self)
			self:diffuse(color("#F8656D"));
			self:zoomto(243,9);
			self:diffusealpha(0);
		end;
		LifeChangedMessageCommand=function(self, param)
			if param.Player == player then
				self:stoptweening();
				if param.LifeMeter:IsInDanger() then
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end
				self:linear(.3);
				self:cropright(1-param.LifeMeter:GetLife()+.025);
				self:linear(.1);
				self:cropright(1-param.LifeMeter:GetLife());
			end;
		end;
		OffCommand=cmd(visible,false);
	};
	Def.Quad{
			InitCommand=function(self)
				self:diffuse(color("#DBDBDB"));
				self:zoomto(243,9);
				self:diffusealpha(0);
			end;
			HealthStateChangedMessageCommand=function(self, param)
				if param.PlayerNumber == player then
					if param.HealthState == "HealthState_Hot" then
						self:diffusealpha(1);
					else
						self:diffusealpha(0);
					end;
				end;
			end;
		};
};

end

return t;