----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
--
-- em_coordinateInfoBox
--
--
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

em_coordinateInfoBox = em_infoBoxBase:new();

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_coordinateInfoBox:getGridCoordinate()
	return " [" .. string.char(math.floor(em_core.map.mX / 1500)+97) .. "-" .. math.floor(em_core.map.mY / 1500) .. "]";
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_coordinateInfoBox:initialise()
	ISPanel.initialise(self);
	self.textColor = em_settings.color_settings.coordinates_text.color;
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_coordinateInfoBox:update()
	if em_settings.context_settings.coordinatesToggle.enabled then
		self.text = em_core.map.mX .. "-" .. em_core.map.mY;
	else
		self.text = "";
	end;
	if em_settings.context_settings.gridCoordinatesToggle.enabled then
		self.text = self.text .. self:getGridCoordinate();
	end;
end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

function em_coordinateInfoBox:render()

	self:drawTextCentre(self.text or "", self:getWidth() / 2, 1, self.textColor.r, self.textColor.g, self.textColor.b, self.textColor.a, UIFont.NewMedium);

end

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------