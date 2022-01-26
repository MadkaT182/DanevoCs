return Def.ActorFrame {
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_LEFT+153;y,SCREEN_TOP+61;zoom,.86;horizalign,left;diffuse,color("#C0C2C2");maxwidth,397);
		SetCommand=function(self)
			local course = GAMESTATE:GetCurrentCourse();
			if course then
				self:settext(course:GetDisplayFullTitle());
			else
				self:settext("");
			end
		end;
	};
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_LEFT+153;y,SCREEN_TOP+82;zoom,.57;horizalign,left;diffuse,color("#C0C2C2");maxwidth,598);
		SetCommand=function(self)
			local course = GAMESTATE:GetCurrentCourse();
			if course then
				self:settext(course:GetEstimatedNumStages().." Stages");
			else
				self:settext("");
			end
		end;
	};
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X+117;y,SCREEN_TOP+82;zoomto,67,14;diffuse,color("#FFFFFF"));
	};
	LoadFont("Common normal")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+89;y,SCREEN_TOP+82;zoom,.47;horizalign,left;diffuse,color("#000000");maxwidth,112);
		SetCommand=function(self)
			self:settext("BPM:");
		end;
	};
	Def.BPMDisplay {
		File=THEME:GetPathF("Common", "normal");
		Name="BPMDisplay";
		InitCommand=cmd(x,SCREEN_CENTER_X+120;y,SCREEN_TOP+82;zoom,.57;horizalign,left;diffuse,color("#000000");maxwidth,112);
		SetCommand=function(self) self:SetFromGameState() end;
	};
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X+222;y,SCREEN_TOP+65;zoomto,124,14;diffuse,color("#8E8A8D"));
	};
	Def.Quad{
		OnCommand=cmd(x,SCREEN_CENTER_X+222;y,SCREEN_TOP+82;zoomto,124,14;diffuse,color("#8E8A8D"));
	};
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Set");
	CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Set");
}