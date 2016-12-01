function [s] = note_gen (f,fs,Td)
A=1;
t=0:1/fs:Td;
s=A*sin(2*pi*f*t);