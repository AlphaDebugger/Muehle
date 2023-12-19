brickObj = EV3();
brickObj.connect('usb');
motor = brickObj.motorC;
brickObj.sensor2.mode = DeviceMode.Color.Reflect;
motor.brakeMode = 'Brake';
motor.power = 0;
motor.stop;
motor.speedRegulation = 'On';
motor.resetTachoCount;
motor.limitValue = 0;
hoehenmotor = brickObj.motorD;
hoehenmotor.power = -5;
hoehenmotor.speedRegulation = 'On';
hoehenmotor.brakeMode = 'Brake';
hoehenmotor.resetTachoCount;
hoehenmotor.limitValue = 160;
hoehenmotor.start;
hoehenmotor.waitFor;
tic
while (toc < 60)
    a = motor.tachoCount
end
brickObj.disconnect();