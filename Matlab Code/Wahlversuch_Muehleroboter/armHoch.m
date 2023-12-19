function armHoch(brickObj)
%ABLEGEN Summary of this function goes here
%   Detailed explanation goes here

hoehenmotor = brickObj.motorD;
hoehenmotor.speedRegulation = 'On';
hoehenmotor.brakeMode = 'Brake';

% runter
hoehenmotor.power = -5;
hoehenmotor.limitValue = 160;
hoehenmotor.start;
hoehenmotor.waitFor;
end

