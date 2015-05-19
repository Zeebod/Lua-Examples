GameObject = {name = " "}

function GameObject:New(t)
	local obj = t or {}
	self.__index = self
	setmetatable(obj, self)
	return obj
end

function GameObject Destroy()
end

function GameObject:Activate()
end

function GameObject:Deactivate()
end






