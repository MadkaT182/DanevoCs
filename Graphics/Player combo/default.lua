local c;
local player = Var "Player";
local ShowComboAt = THEME:GetMetric("Combo", "ShowComboAt");
local Pulse = THEME:GetMetric("Combo", "PulseCommand");
local PulseLabel = THEME:GetMetric("Combo", "PulseLabelCommand");

local NumberMinZoom = THEME:GetMetric("Combo", "NumberMinZoom");
local NumberMaxZoom = THEME:GetMetric("Combo", "NumberMaxZoom");
local NumberMaxZoomAt = THEME:GetMetric("Combo", "NumberMaxZoomAt");

local LabelMinZoom = THEME:GetMetric("Combo", "LabelMinZoom");
local LabelMaxZoom = THEME:GetMetric("Combo", "LabelMaxZoom");

local t = Def.ActorFrame {
	InitCommand=cmd(vertalign,bottom);
	LoadFont( "Combo", "numbers" ) .. {
		Name="Number";
		OnCommand = THEME:GetMetric("Combo", "NumberOnCommand");
	};
	LoadFont("Common Normal") .. {
		Name="Label";
		OnCommand = THEME:GetMetric("Combo", "LabelOnCommand");
	};
	InitCommand = function(self)
		c = self:GetChildren();
		c.Number:visible(false);
		c.Label:visible(false);
	end;
	ComboCommand=function(self, param)
		local iCombo = param.Misses or param.Combo;
		if not iCombo or iCombo < ShowComboAt then
			c.Number:visible(false);
			c.Label:visible(false);
			return;
		end

		local labeltext = "";
		if param.Combo then
			labeltext = "COMBO!";
		else
			labeltext = "";
		end
		
		c.Label:settext( labeltext );
		c.Label:visible(false);
		param.Zoom = scale( iCombo, 0, NumberMaxZoomAt, NumberMinZoom, NumberMaxZoom );
		param.Zoom = clamp( param.Zoom, NumberMinZoom, NumberMaxZoom );
		param.LabelZoom = scale( iCombo, 0, NumberMaxZoomAt, LabelMinZoom, LabelMaxZoom );
		param.LabelZoom = clamp( param.LabelZoom, LabelMinZoom, LabelMaxZoom );
		c.Number:visible(true);
		c.Label:visible(true);
		c.Number:settext( string.format("%i", iCombo) );
		if param.Combo then
			c.Number:diffuse(Color("White"));
			c.Number:stopeffect();
			(cmd(diffuse,Color("White");diffusebottomedge,color("0.5,0.5,0.5,1")))(c.Label);
		end
		Pulse( c.Number, param );
		PulseLabel( c.Label, param );
	end;
};

return t;
