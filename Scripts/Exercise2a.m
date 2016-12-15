% Activate Ultrasonic SENSOR_1.
OpenUltrasonic(SENSOR_1);

% Define the motor and power it.
mAC = NXTMotor('AC');
mAC.Power = 50;
mAC.SendToNXT();

while(true)
    
    % Read and display data from SENSOR_1.
    val = GetUltrasonic(SENSOR_1);
    display(val);
    
    % Stop if to close.
    if( val  < 22 )
        mAC.Stop('off');
    end;
end;