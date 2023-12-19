function [spielstein] = farbeErkennnen(brickObj)
if(brickObj.sensor2.value < 12)
    spielstein = 2
elseif (brickObj.sensor2.value < 25)
    spielstein = 0
elseif (brickObj.sensor2.value < 100)
    spielstein = 1
else 
    spielstein = 3
end
end