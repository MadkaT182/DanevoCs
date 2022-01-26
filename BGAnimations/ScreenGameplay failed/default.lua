local t = Def.ActorFrame {};
if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame{
		Def.Quad{
			OnCommand=cmd(diffusealpha,0;sleep,2.634);
		};
		Def.Quad{
			OnCommand=cmd(x,-SCREEN_WIDTH/4;y,SCREEN_TOP-10;zoomtowidth,SCREEN_WIDTH*2;zoomtoheight,SCREEN_HEIGHT/2;diffuse,Color.Black;rotationz,-15;linear,.134;rotationz,0;x,SCREEN_CENTER_X;y,SCREEN_TOP+SCREEN_HEIGHT/4);
		};
		Def.Quad{
			OnCommand=cmd(x,SCREEN_WIDTH*1.25;y,SCREEN_BOTTOM+10;zoomtowidth,SCREEN_WIDTH*2;zoomtoheight,SCREEN_HEIGHT/2;diffuse,Color.Black;rotationz,-15;linear,.134;rotationz,0;x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-SCREEN_HEIGHT/4);
		};
		LoadActor("failed")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;zoom,2.94;diffuse,color("#FF00DE");diffusealpha,0;sleep,.267;diffusealpha,.7;sleep,.067;diffusealpha,0);
		};
		LoadActor("failed")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,2.22;diffuse,color("#00DEFF");diffusealpha,0;sleep,.333;diffusealpha,.7;sleep,.1;diffusealpha,0);
		};
		LoadActor("failed")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,.6;diffuse,color("#4E4B52");diffusealpha,1;linear,1.6;diffuse,Color.Black);
		};
	};
end
return t;