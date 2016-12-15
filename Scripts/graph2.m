f=100 %the signal frequency is 100Hz 
Td=1/f; %the signal period is Td 
N=1024; %Total number of samples is 1024 

Ts=Td/N; %sampling period in seconds 
t=0:Ts:Td; %the time axis 

s2=sin(2*pi*f*t); %generate sine samples

