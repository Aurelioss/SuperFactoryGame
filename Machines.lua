-- Objects

M_Factory = {
    name = "",
    maxMachines = 3,
    machines = {},
    level = 1,
    maxLevel = 3,
    golds = 2
}

M_GoldMine = {
  level = 0,
  maxLevel = 0,
  production = 0,
  price = 0,
  worth = 0
}

-- Objects' Methods

function M_GoldMine:new(o, level, maxLevel, production, price, worth)

  o = o or {}
  setmetatable(o, self)
  self.__index = self
  self.level = level or 1
  self.maxLevel = maxLevel or 5
  self.production = production or 3
  self.price = price or 1
  self.worth = worth or 1
  return o
end

function M_GoldMine:upgrade()

  if self.level < self.maxLevel then
    print("upgrading")
  else
    print("Level max")
  end
end