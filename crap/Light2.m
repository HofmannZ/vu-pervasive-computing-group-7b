SwitchLamp(MOTOR_B, 'off') 
OpenLight (SENSOR_2,'ACTIVE');
while (true) 
   val = GetLight(SENSOR_2); 
   display (val); 
    if (val < 500) 
         SwitchLamp(MOTOR_B, 'on')
         Backwards;
         Turn90;
    end 
    if (val > 600)  
         SwitchLamp(MOTOR_B, 'off') 
         SimpleDriveBoth;
    end 
end