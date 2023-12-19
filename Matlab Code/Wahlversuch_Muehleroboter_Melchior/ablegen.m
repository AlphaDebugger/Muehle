function ablegen(brickObj)
%ABLEGEN Summary of this function goes here
%   Detailed explanation goes here

hoehenmotor = brickObj.motorD;
hoehenmotor.power = -5;
hoehenmotor.speedRegulation = 'On';
hoehenmotor.brakeMode = 'Brake';

% runter
hoehenmotor.power = 5;
hoehenmotor.limitValue = 160;
hoehenmotor.start;
hoehenmotor.waitFor;

% öffnen
greifmotor = brickObj.motorA;
greifmotor.brakeMode = 'Brake';
greifmotor.limitMode = 'Tacho';
greifmotor.power = -40;
greifmotor.speedRegulation = 'On';
greifmotor.resetTachoCount;
greifmotor.limitValue = 50;
greifmotor.stop;
greifmotor.start;
greifmotor.waitFor;

%wieder rauf

hoehenmotor.power = -5;
hoehenmotor.limitValue = 170;
hoehenmotor.start;
hoehenmotor.waitFor;
end

