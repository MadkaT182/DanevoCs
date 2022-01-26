local t = Def.ActorFrame {};

if sPlayMode == 'PlayMode_Battle' or sPlayMode == 'PlayMode_Rave' then
	--PlayMode_Battle
elseif GAMESTATE:GetPlayMode() ~= 'PlayMode_Oni' and not GAMESTATE:IsDemonstration() then
	--Regular gameplay
	t[#t+1] = LoadActor("lifestream")..{
		OnCommand=cmd(x,SCREEN_CENTER_X);
	};
end

return t;