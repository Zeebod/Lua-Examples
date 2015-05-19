Button = Sprite:New({unselected = " ", selected = " "})

function Button:Activate()
	self.name = self.unselected
	Sprite.Activate(self)
end

function Button:Select()
	Sprite.Destroy(self)
	self.name = self.selected
	Sprite.Activate(self)
end

function Button:Unselect()
	Sprite.Destroy(self)
	self.name = self.unselected
	Sprite.Activate(self)
end

function Button:Toggle()
	if self.name == self.selected then
		self.Unselect()
	else
		self:Select()
	end
end


