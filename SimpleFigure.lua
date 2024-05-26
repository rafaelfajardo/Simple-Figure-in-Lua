SimpleFigure = class()

function SimpleFigure:init()
    self.myR = 10 -- Radius
    self.myW = 2*self.myR
    self.myH = 2*self.myR
    self.myX = math.random(2,WIDTH-2)
    self.myY = math.random(2,HEIGHT-2)
    self.myVX = math.random(-3,3)
    self.myVY = math.random(-4,4)
    self.clr = color(182, 125, 82, 255)
end

function SimpleFigure:update()
    -- check self for collision with edges
    if self.myX > WIDTH or self.myX < 1 then
        self.myVX = self.myVX * -1
    end
    if self.myY > HEIGHT or self.myY < 1 then
        self.myVY = self.myVY * -1
    end

    -- move self
    self.myX = self.myX + self.myVX
    self.myY = self.myY + self.myVY
end

function SimpleFigure:draw()
    -- Codea does not automatically call this method
    fill(self.clr)
    stroke(0,0,0,255)
    
    strokeWidth(2*self.myR/10)
    rect(self.myX,self.myY,self.myW,self.myH)
    strokeWidth(self.myR/10)
    ellipse(self.myX, self.myY+self.myR,self.myR*2)
end

function SimpleFigure:collide(other)
    -- is the center of other inside my bounding square?
    
    if other.myX >= self.myX-self.myR and
       other.myX <= self.myX+self.myR and
       other.myY >= self.myY-self.myR and
       other.myY <= self.myY+self.myR then
        return true
        else
        return false
    end
    
    -- uses pythagorean theorem to create a bounding circle with a radius = distance    
--[[    local distance = 0
    local diffX    = 0
    local diffY    = 0
    
    diffX = self.myX - other.myX
    diffY = self.myX - other.myY
    distance = math.sqrt(diffX*diffX + diffY*diffY)
    
    if distance <= (5) then -- changed distance
        return true
        else
        return false
    end]]
end
--[[
  boolean intersect (SimpleFigure otherFigure)
  {
    float distance;

    int diffX = this.getX() - otherFigure.getX();
    int diffY = this.getY() - otherFigure.getY();
    distance = sqrt ( diffX*diffX + diffY*diffY);

    if ( distance <= myW)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
]]

function SimpleFigure:touched(touch)
    -- Codea does not automatically call this method
end

-- getters
function SimpleFigure:getX()
    return self.myX
end

function SimpleFigure:getY()
    return self.myY
end

function SimpleFigure:getR()
    return self.myR
end

function SimpleFigure:getVX()
    return self.myVX
end

function SimpleFigure:getVY()
    return self.myVY
end

-- setters
function SimpleFigure:setX(x)
    self.myX = x
end

function SimpleFigure:setY(y)
    self.myY = y
end

function SimpleFigure:setVX(vx)
    self.myVX = vx
end

function SimpleFigure:setVY(vy)
    self.myVY = vy
end

function SimpleFigure:setCLR(rainbow)
    self.clr = rainbow
end
