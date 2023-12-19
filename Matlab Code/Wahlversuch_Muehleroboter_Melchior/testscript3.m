brickObj = EV3();
brickObj.connect('usb');
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
pause(.1);
hoehenmotor.limitValue = 160;
hoehenmotor.start;
hoehenmotor.waitFor;
pause(5);
hoehenmotor.power = 5;
hoehenmotor.limitValue = 160;
hoehenmotor.start;
hoehenmotor.waitFor;
greifmotor.power = -40;
greifmotor.speedRegulation = 'On';
greifmotor.resetTachoCount;
greifmotor.limitValue = 50;
greifmotor.stop;
greifmotor.start;
greifmotor.waitFor;
brickObj.disconnect();