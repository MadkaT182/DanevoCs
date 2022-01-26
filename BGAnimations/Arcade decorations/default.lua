return Def.ActorFrame {
	LoadFont("Common normal")..{
		InitCommand=cmd(Center;addy,SCREEN_HEIGHT/4);
		SetCommand=function(self)
			if GAMESTATE:IsEventMode() or GAMESTATE:GetCoinMode()=='CoinMode_Free' then
				self:settext("PRESS START BUTTON");
			elseif GAMESTATE:GetCoinMode()=='CoinMode_Pay' then
				if GAMESTATE:EnoughCreditsToJoin() then
					self:settext("PRESS START BUTTON");
					self:diffuseblink();
				else
					self:settext("INSERT COIN(S)");
				end
			else
				self:settext("");
			end
		end;
	};
	CoinInsertedMessageCommand=cmd(playcommand,"Set");
	RefreshCreditTextMessageCommand=cmd(playcommand,"Set");
	PlayerJoinedMessageCommand=cmd(playcommand,"Set");
	ScreenChangedMessageCommand=cmd(playcommand,"Set");
}