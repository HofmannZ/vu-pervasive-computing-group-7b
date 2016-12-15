OpenLight (SENSOR_2,'ACTIVE');
for i=1:10 
  val = GetLight(SENSOR_2);  
  light_vec(i) = val;    % read the sensor in variable val 
  display (val);               % display the variable val on the screen 
  pause (0.5);                 % wait for 0.5ms 
end 
OpenLight (SENSOR_2,'INACTIVE');