% Activate both light sensors.
OpenLight(SENSOR_2, 'ACTIVE');
OpenLight(SENSOR_3, 'ACTIVE');

% Define the motors.
mAC = NXTMotor('AC');
mA = NXTMotor('A');
mC = NXTMotor('C');

while(true)    
    % Read and display data from left sensor.
    leftSensorVal = GetLight(SENSOR_2); 
    display(leftSensorVal);
    
    % Read and display data from right sensor.
    rightSensorVal = GetLight(SENSOR_3); 
    display(rightSensorVal);
    
    % If both sensors hit the black line.
    if(leftSensorVal < 500 && rightSensorVal < 400) 
        
        % Turn ON the light.
        SwitchLamp(MOTOR_B, 'on');
        
        % Stop the motors
        mAC.Stop('off');
        
    % If left sensor hits the black line.
    elseif(leftSensorVal < 500)
        
        % Turn ON the light.
        SwitchLamp(MOTOR_B, 'on');
        
        % Turn counterclockwise.
        mA.Power = 0;
        mC.Power = 25;
        mA.SendToNXT();
        mC.SendToNXT();
    
    % If right sensor hits the black line.
    elseif(rightSensorVal < 400) 
        
        % Turn ON the light.
        SwitchLamp(MOTOR_B, 'on');
        
        % Turn clockwise.
        mA.Power = 25;
        mC.Power = 0;
        mA.SendToNXT();
        mC.SendToNXT();
    
    % If none of the sensors hit the black line.
    else
        
        % Turn OFF the light.
        SwitchLamp(MOTOR_B, 'off');
        
        % Drive straight.
        mAC.Power = 50;
        mAC.SendToNXT();
        
    end

end