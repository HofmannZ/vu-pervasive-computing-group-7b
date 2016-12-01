OpenLight (SENSOR_1,'ACTIVE');
for i=1:10 
  val = GetLight(SENSOR_1);    % read the sensor in variable val 
  display (val);               % display the variable val on the screen 
  pause (0.5);                 % wait for 0.5ms 
end 
OpenLight (SENSOR_1,'INACTIVE');