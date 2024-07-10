SPEED = 1.2

function love.load()
  a1 = { x = 40, y = 30 }
end

function love.update()
  if love.keyboard.isDown("left") then
    a1.x = a1.x - SPEED
  end
  
  if love.keyboard.isDown("right") then
    a1.x = a1.x + SPEED
  end
  
  if love.keyboard.isDown("up") then
    a1.y = a1.y - SPEED
  end
  
  if love.keyboard.isDown("down") then
    a1.y = a1.y + SPEED
  end
end

function love.draw()
  love.graphics.setColor(1, 0, 0)
  love.graphics.circle("line", a1.x, a1.y, 4)
  
  love.graphics.setColor(0, 0, 1)
  love.graphics.print("Titik", a1.x, a1.y)
end
