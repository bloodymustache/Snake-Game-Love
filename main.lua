local newImage

function love.load ()
  x = 100
  y = 100
  love.graphics.setBackgroundColor(0, 210, 50)
  love.window.setTitle("Snake Game")
  rio = love.graphics.newImage("gayrio.png")
end

function love.update (dt)
  if love.keyboard.isDown("right") then
    x = x + 75 * dt
  end
  if love.keyboard.isDown("left") then
    x = x + -75 * dt
  end
  if love.keyboard.isDown("down") then
    y = y + 75 * dt
  end
  if love.keyboard.isDown("up") then
    y = y + -75 * dt
  end
end

function love.draw()
  love.graphics.rectangle("fill", x, y, 100, 50)
  love.graphics.draw(rio, x, y)
end
