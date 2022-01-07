----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--
-- em_infoBoxBase
--
--
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
require "ISUI/ISPanel"
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

em_infoBoxBase = ISPanel:derive("em_infoBoxBase");

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_infoBoxBase:prerender()
	if self.showBackground then self:drawRect(0, 0, self.width, self.height, self.backgroundColor.a, self.backgroundColor.r, self.backgroundColor.g, self.backgroundColor.b); end;
	if self.showBorder then self:drawRectBorder(0, 0, self.width, self.height, self.borderColor.a, self.borderColor.r, self.borderColor.g, self.borderColor.b); end;
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_infoBoxBase:close()
	self:setVisible(false);
	self:removeFromUIManager();
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_infoBoxBase:new()
	local o = ISPanel:new(0,0,0,0);
	setmetatable(o, self)
		self.__index = self;
		o.showBackground = false;
		o.showBorder = false;
		o.textColor = {r=1, g=1, b=1, a=1};
		o.backgroundColor = {r=0, g=0, b=0, a=1};
		o.borderColor = {r=1, g=1, b=1, a=0.5};
	return o;
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------