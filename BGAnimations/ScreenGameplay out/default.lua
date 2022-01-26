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
		LoadActor("complete")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2;zoom,2.94;diffuse,color("#FF00DE");diffusealpha,0;sleep,.267;diffusealpha,.7;sleep,.33;diffusealpha,0;sleep,.534;zoom,1;addy,-7;diffusealpha,.7;linear,.33;diffusealpha,0);
		};
		LoadActor("complete")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,2.22;diffuse,color("#00DEFF");diffusealpha,0;sleep,.333;diffusealpha,.7;sleep,.03;diffusealpha,0;sleep,.3;zoom,1;addy,-5;addx,1;diffusealpha,.7;linear,.33;diffusealpha,0);
		};
		LoadActor("complete")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,.6;diffuse,color("#4E4B52");diffusealpha,1;linear,.8;diffuse,Color.Black);
		};
		LoadActor("complete")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0;sleep,.4;diffusealpha,.5;linear,.167;zoomx,1.2;diffusealpha,0);
		};
		LoadActor("complete")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;zoom,1.35;diffuse,Color.White;diffusealpha,0;sleep,.367;diffusealpha,.3;linear,.1;diffusealpha,0;zoomx,1.5);
		};
	};
end
return t;