% Activate Ultrasonic SENSOR_1.
OpenUltrasonic(SENSOR_1);

% Define the motor and power it.
mAC = NXTMotor('AC');

while(true)
    
    % Read and display data from SENSOR_1.
    val = GetUltrasonic(SENSOR_1);
    display(val);
    
    if( val >= 50 )
        mAC.Power = 50;
        mAC.SendToNXT();
    end;
    
    if( val < 50 && val >= 35 )
        mAC.Power = 35;
        mAC.SendToNXT();
    end;
    
    if( val < 35 )
        mAC.Power = 25;
        mAC.SendToNXT();
    end;
    
    % Stop if to close.
    if( val  < 25 )
        mAC.Stop('off');
    end;
end;