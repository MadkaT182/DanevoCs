local t = Def.ActorFrame {
	LoadActor(THEME:GetPathG("Wheel","ItemBG"))..{
		OnCommand=cmd(y,46;fadetop,.85;croptop,.25;diffusealpha,.5;zoomy,-1);
	};
};

if ThemePrefs.Get('BannerinMW') then
	t[#t+1] = Def.ActorFrame{
		Def.Sprite{
			SetCommand=function(self,param)
				if param.Song then
					if param.Song:HasBanner() then
						self:LoadFromSongBanner(param.Song);
					else
						self:Load(THEME:GetPathG("Common","fallback banner"));
					end
					self:zoomto(160,-42);
					self:y(42);
					self:fadetop(.85);
					self:croptop(.25);
					self:diffusealpha(.5);
				else
					self:diffusealpha(0);
				end
			end;
		};
	};
else
	t[#t+1] = Def.ActorFrame{
		Def.ActorFrame{
			LoadFont("Common normal")..{
				InitCommand=cmd(zoom,.66;y,46;maxwidth,240;zoomy,-.66);
				SetCommand=function(self,param)
					if param.Song then
						local subt = param.Song:GetDisplaySubTitle();
						self:settext(param.Song:GetDisplayMainTitle());
						self:diffuse(color("#000000"));
						if string.len(subt) > 0 then
							self:y(56);
						else
							self:y(38);
						end
					end
				end;
			};
			LoadFont("Common normal")..{
				InitCommand=cmd(zoom,.6;y,37;maxwidth,260;zoomy,-.6);
				SetCommand=function(self,param)
					if param.Song then
						self:settext(param.Song:GetDisplaySubTitle());
						self:diffuse(color("#000000"));
					end
				end;
			};
		};
	};
end

t[#t+1] = Def.ActorFrame{
	LoadActor(THEME:GetPathG("Wheel","ItemBG"));
};

if ThemePrefs.Get('BannerinMW') then
	t[#t+1] = Def.ActorFrame{
		Def.Sprite{
			SetCommand=function(self,param)
				if param.Song then
					if param.Song:HasBanner() then
						self:LoadFromSongBanner(param.Song);
					else
						self:Load(THEME:GetPathG("Common","fallback banner"));
					end
					self:zoomto(160,42);
					self:diffusealpha(1);
				else
					self:diffusealpha(0);
				end
			end;
		};
	};
else
	t[#t+1] = Def.ActorFrame{
		Def.ActorFrame{
			LoadFont("Common normal")..{
				InitCommand=cmd(zoom,.66;y,10;maxwidth,240);
				SetCommand=function(self,param)
					if param.Song then
						local subt = param.Song:GetDisplaySubTitle();
						self:settext(param.Song:GetDisplayMainTitle());
						self:diffuse(color("#000000"));
						if string.len(subt) > 0 then
							self:y(-9);
						else
							self:y(10);
						end
					end
				end;
			};
			LoadFont("Common normal")..{
				InitCommand=cmd(zoom,.6;y,10;maxwidth,260);
				SetCommand=function(self,param)
					if param.Song then
						self:settext(param.Song:GetDisplaySubTitle());
						self:diffuse(color("#000000"));
					end
				end;
			};
		};
	};
end

t[#t+1] = Def.ActorFrame{
	LoadActor(THEME:GetPathG("Song","New")) .. {
		InitCommand=cmd(x,58;y,-32);
		SetCommand=function(self,param)
			if param.Song then
				if PROFILEMAN:IsSongNew(param.Song) then
					self:visible(true);
				else
					self:visible(false);
				end
			else
				self:visible(false);
			end
		end;
	};
};

return t;