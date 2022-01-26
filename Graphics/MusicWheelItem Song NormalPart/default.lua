local t = Def.ActorFrame {
	LoadActor(THEME:GetPathG("Wheel","ItemBG"));
	--Song Info
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
	--new song
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