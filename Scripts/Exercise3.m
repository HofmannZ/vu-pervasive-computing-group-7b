% Activate both light sensors.
OpenLight(SENSOR_2, 'ACTIVE');
OpenLight(SENSOR_3, 'ACTIVE');

% Define the motors.
mAC = NXTMotor('AC');
mA = NXTMotor('A');
mC = NXTMotor('C');

while(true)
    % Reset the light.
    SwitchLamp(MOTOR_B, 'off');
    
    % Read and display data from SENSOR_2.
    val1 = GetLight(SENSOR_2); 
    display(val1);
    
    % Read and display data from SENSOR_3.
    val2 = GetLight(SENSOR_3); 
    display(val2);
    
    % Drive straight.
    mAC.Power = 50;
    mAC.SendToNXT();
    
    % If reaches black line.
    if(val1 < 500)
        
        % Turn on the light.
        SwitchLamp(MOTOR_B, 'on');
        
        % Turn clockwise for one second.
        mA.Power = -25;
        mC.Power = 25;
        mA.SendToNXT();
        mC.SendToNXT();
        pause(0.5);
        mAC.Stop('off');
    end;
    
     % If reaches black line.
    if(val2 < 400) 
        
        % Turn on the light.
        SwitchLamp(MOTOR_B, 'on');
        
        % Turn clockwise for one second.
        mA.Power = 25;
        mC.Power = -25;
        mA.SendToNXT();
        mC.SendToNXT();
        pause(0.5);
        mAC.Stop('off');
    end;
end;