function aufheben(brickObj)
%AUFHEBEN Summary of this function goes here
%   Detailed explanation goes here
hoehenmotor = brickObj.motorD;
hoehenmotor.power = -5;
hoehenmotor.speedRegulation = 'On';
hoehenmotor.brakeMode = 'Brake';
hoehenmotor.resetTachoCount;

greifmotor = brickObj.motorA;
greifmotor.speedRegulation = 'Off';
greifmotor.brakeMode = 'Brake';
greifmotor.limitMode = 'Tacho';
greifmotor.resetTachoCount;

greifmotor.power = 40;
greifmotor.limitValue = 60;
greifmotor.start;
pause(.5);
% Hochziehen
hoehenmotor.limitValue = 170;
hoehenmotor.start;
hoehenmotor.waitFor;

end

