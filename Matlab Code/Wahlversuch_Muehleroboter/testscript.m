brickObj = EV3();
brickObj.connect('usb');
greifmotor = brickObj.motorA;
brickObj.sensor2.mode = DeviceMode.Color.Reflect;
greifmotor.brakeMode = 'Brake';
greifmotor.power = 0;
greifmotor.speedRegulation = 'Off';
greifmotor.resetTachoCount;
greifmotor.limitValue = 160;
tic
while (toc < 30)
    a = greifmotor.tachoCount
end
brickObj.disconnect();