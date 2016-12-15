SwitchLamp(MOTOR_B, 'off') 
OpenLight (SENSOR_1,'ACTIVE');
while (true) 
   val = GetLight(SENSOR_1); 
   display (val); 
    if (val < 500) 
         SwitchLamp(MOTOR_B, 'on') 
         
    end 
    if (val > 600)  
     
         SwitchLamp(MOTOR_B, 'off') 
    end 
end