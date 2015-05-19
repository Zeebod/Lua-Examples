GameState = GameObject:New({sprites = {}, initSprites = {}})

function GameState:Activate()
	for k, v in pairs(self.initSprites) do
		self.sprites[#self.sprites + 1] = Sprite.New(v)
		self.sprites[#self.sprites]:Activate()
	end
end

function GameState:Deactivate()
	for k,v in pairs (self.sprites) do
		v:Deactivate()
	end
end

function GameState:Destroy()
	for k,v in pairs(self.sprites) do
		v:Destroy()
		self.sprites[k] = nil
	end
end

function SwitchState(newState)
	curState:Destroy()
	curState = newState
	curState:Activate()
end
