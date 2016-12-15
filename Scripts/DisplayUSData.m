while(true)
OpenUltrasonic(SENSOR_3);
val = GetUltrasonic(SENSOR_3);
display (val);
CloseSensor(SENSOR_3)
end