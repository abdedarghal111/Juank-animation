function love.load()
  e1 = love.graphics.newImage("Images/head.png")
  e2 = love.graphics.newImage("Images/cap.png")
  e3 = love.graphics.newImage("Images/particles.png")
  l1,r1 = 10,false
  l2,r2 = 15,false
  l3,r3 = 0,false
  update = require("module")
  local _x,_y =e1:getDimensions()
  x,y = love.graphics.getDimensions()
  x,y = x/2-_x/2,y/2-_y/2
end
function love.draw()
  l1,r1 = update(l1,r1)
  l2,r2 = update(l2,r2)
  l3,r3 = update(l3,r3)
  do
    local loop = (l1/10)^2
    local _x,_y = x,y+loop
    love.graphics.draw(e1,_x,_y)
    loop = (l2/10)^2
    _x,_y = x,y+loop
    love.graphics.draw(e2,_x,_y)
    loop = (l3/10)^2
    _x,_y = x,y+loop
    love.graphics.draw(e3,_x,_y)
  end
end
