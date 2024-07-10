SPEED = 200

function love.load()
    -- Rectangle A
    rect_a = {
        x = 100,
        y = 100,
        w = 100,
        h = 100
    }
    
    -- Rectangle B
    rect_b = {
        x = 300,
        y = 300,
        w = 100,
        h = 100
    }

    -- Collision status
    is_colliding = false
end

-- Check for collision between two rectangles
function check_collision_rect(a, b)
    if a.x < b.x + b.w and
       a.x + a.w > b.x and
       a.y < b.y + b.h and
       a.y + a.h > b.y then
        return true
    else
        return false
    end
end

function love.update(dt)
    -- Move rectangle A with arrow keys
    if love.keyboard.isDown("right") then
        rect_a.x = rect_a.x + SPEED  * dt
    elseif love.keyboard.isDown("left") then
        rect_a.x = rect_a.x - SPEED  * dt
    end
    
    if love.keyboard.isDown("down") then
        rect_a.y = rect_a.y + SPEED  * dt
    elseif love.keyboard.isDown("up") then
        rect_a.y = rect_a.y - SPEED  * dt
    end
    
    -- Move rectangle B with WASD keys
    if love.keyboard.isDown("d") then
        rect_b.x = rect_b.x + SPEED  * dt
    elseif love.keyboard.isDown("a") then
        rect_b.x = rect_b.x - SPEED  * dt
    end
    
    if love.keyboard.isDown("s") then
        rect_b.y = rect_b.y + SPEED  * dt
    elseif love.keyboard.isDown("w") then
        rect_b.y = rect_b.y - SPEED  * dt
    end
    
    -- Check for collision
    is_colliding = check_collision_rect(rect_a, rect_b)
end

function love.draw()
    -- Set color for rectangle A (red if colliding, green otherwise)
    if is_colliding then
        love.graphics.setColor(1, 0, 0)
    else
        love.graphics.setColor(0, 1, 0)
    end
    love.graphics.rectangle("fill", rect_a.x, rect_a.y, rect_a.w, rect_a.h)
    
    -- Set color for rectangle B (blue)
    love.graphics.setColor(0, 0, 1)
    love.graphics.rectangle("fill", rect_b.x, rect_b.y, rect_b.w, rect_b.h)
    
    -- Display collision status
    love.graphics.setColor(1, 1, 1)
    if is_colliding then
        love.graphics.print("Collision Detected", 10, 10)
    else
        love.graphics.print("No Collision", 10, 10)
    end
end
