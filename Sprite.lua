Sprite = GameObject:New({id = -1, x = 0, y = 0, visible = false})



function Sprite:Activate()
	if self.id == -1 then
		self.id = CreateSprite(self.name, self.x, self.y)
	end
	SetSpriteVisibility(self.id, true) --self.visible = true
end

function Sprite:Deactivate()
	if self.id ~= -1 then
		SetSpriteVisibility(self.id, false) --self.visible = false
	end
end

function Sprite:Destroy()
	DeleteSprite(self.id)
	self.id = -1
end
