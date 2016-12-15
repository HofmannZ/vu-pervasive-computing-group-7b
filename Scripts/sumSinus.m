A = 1;
%amplitude

f1 = 50;
%frequency of first sinusoid

f2 = 100;
%frequency of second sinusoid

t = 0:0.0001:0.1;
%generate a vector with timemoments in a timespan of 1 second

sin50 = A*sin(2*pi*f1*t);
sin100 = A*sin(2*pi*f2*t);
%generate vector y containing the sampled sinusoidal signal

sumSin= sin50+sin100;
%sum of both sinusoids

spectr(sumSin,150);
