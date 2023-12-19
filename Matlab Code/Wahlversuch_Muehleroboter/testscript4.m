brickObj = EV3();
brickObj.connect('usb');

aufheben(brickObj);
pause(2);
fahreZu(brickObj, 1, 7, 1);
ablegen(brickObj);
fahreZu(brickObj, 1, 7, -1);
brickObj.disconnect;