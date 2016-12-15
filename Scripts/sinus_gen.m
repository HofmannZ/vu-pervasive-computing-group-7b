function [s]=sinus_gen(A,f,fs,Td)
%this function generates and plots a sinusoidal signal
%with the amplitude A, frequency f,sampling frequency fs, and duration Td
t=0:1/fs:Td;
s=A*sin(2*pi*f*t);
%generate a the time vector with time moments
%time runs between 0 and Td sec
%time step is 1/fs
%generate a vector s containing the sampled sinusoidal
%signal
plot (t,s);
grid on;
xlabel ('Time [seconds]');