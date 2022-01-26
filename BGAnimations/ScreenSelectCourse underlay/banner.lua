local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	Def.Sprite{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-48);
		SetCommand=function(self)
			local bannum = math.random(0,41);
			self:Load(THEME:GetPathG("Banner/selm_"..bannum.."_bnr",""));
		end;
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
};

return t;