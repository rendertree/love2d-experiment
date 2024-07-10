rect = {}
rect.___index = rect

function rect.new(x, y, w, h)
    local self = setmetatable({}, rect)
    self.x = x or 0
    self.y = y or 0
    self.w = w or 0
    self.h = h or 0
    return self
end

r1 = {}

function love.load()
  r1 = rect.new(90, 30, 18, 8)
end

function love.update()
  if r1.w < 700 then
    r1.w = r1.w + 1.0
  end
end

function love.draw()
  love.graphics.rectangle("fill", r1.x, r1.y, r1.w, r1.h)
  love.graphics.print("Simple Bar:", 12, 27)
end