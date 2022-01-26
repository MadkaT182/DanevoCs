local children = {
	LoadActor(THEME:GetPathG("Wheel","ItemBG"))..{
		GainFocusCommand=cmd(diffuse,color("#E7E99A"));
		LoseFocusCommand=cmd(diffuse,color("#FFFFFF"));
	};
	LoadFont("Common normal")..{
		Text=THEME:GetString( 'ScreenTitleMenu', Var("GameCommand"):GetText() );
		InitCommand=cmd(zoom,.66;y,10;maxwidth,240;diffuse,color("#000000"));
		DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
	};
	LoadActor(THEME:GetPathG("Wheel","ItemBG"))..{
		InitCommand=cmd(y,46;fadetop,.85;croptop,.25;diffusealpha,.5;zoomy,-1);
		GainFocusCommand=cmd(diffuse,color("#E7E99A"));
		LoseFocusCommand=cmd(diffuse,color("#FFFFFF"));
	};
	LoadFont("Common normal")..{
		Text=THEME:GetString( 'ScreenTitleMenu', Var("GameCommand"):GetText() );
		InitCommand=cmd(zoom,.66;y,36;maxwidth,240;diffuse,color("#000000");zoomy,-.66);
		DisabledCommand=cmd(diffuse,0.5,0.5,0.5,1);
	};
};

return Def.ActorFrame { children = children };