mA = NXTMotor('A');
mA.Power = 10;

mC = NXTMotor('C');
mC.Power = -10;

mA.SendToNXT();
mC.SendToNXT();

pause(0.5)
mA.Stop('off');
mC.Stop('off');