local t = Def.ActorFrame {
	LoadActor(THEME:GetPathG("Wheel","ItemBG"));
	--Song Info
	Def.ActorFrame{
		LoadFont("Common normal")..{
			InitCommand=cmd(zoom,.66;y,10;maxwidth,240);
			SetCommand=function(self,param)
				if param.Course then
					self:settext(param.Course:GetDisplayFullTitle());
					self:diffuse(color("#000000"));
					self:y(10);
				end
			end;
		};
	};
};
return t;