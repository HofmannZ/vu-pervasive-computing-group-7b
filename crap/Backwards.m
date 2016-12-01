mA = NXTMotor('A');
mA.Power = -10;

mC = NXTMotor('C');
mC.Power = -10;

mA.SendToNXT();
mC.SendToNXT();

pause(1)
mA.Stop('off');
mC.Stop('off');
