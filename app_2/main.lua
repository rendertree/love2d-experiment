r1 = {}

function love.load()
  r1 = {
      x = 90,
      y = 30,
      w = 18,
      h = 8
    }
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