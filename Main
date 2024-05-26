-- 6

function setup()
--    displayMode(OVERLAY)  -- may be a deprecated entity
--    backingMode(STANDARD) -- may be a deprecated entity
    rectMode(CENTER)
    
    things = {}
    for i = 1,4 do
        things[i] = SimpleFigure()
    end
end


function draw()

    background(127, 127, 127, 255)
-- update things   
    for i = 1,#things do
        things[i]:update()
    end

    for i = 1,#things do
        for j = i+1,#things do
            if things[i]:collide(things[j]) then
               -- print(i, " collides with ", j)

                things[i]:setVX(0)  -- set thing i x velocity to 0
                things[i]:setVY(0)  -- set thing i y velocity to 0
                things[i]:setCLR(color(127,127,0))  -- set thing i color
                things[j]:setVX(things[j]:getVX()*-1)   -- multiply x velocity by -1
                things[j]:setVY(things[j]:getVY()*-1)   -- multiply y velocity by -1
                things[j]:setCLR(color(0,127,127))    -- set thing j color
            end
       end
    end
-- draw things
    for i = 1,#things do
        things[i]:draw()
    end
end


    
