function spectr(s,Fs)
%this takes a one dimensional waveform and a sampling frequency

  N=10000;
  %10000 elements
  
  fft_vector=fft(s, N);
  %apply FFT on vector s with N=1024 samples. The returned vector is 
  %fft_vector with 10000 elements

  m=abs(fft_vector);
  %fft_vector is a complex function so we take only the real part

  halfN=N/2;
  %we are interested only in the amplitude

  x=(0:halfN-1)*Fs/N;
  %make the frequency axis for the first half of the returned vector 

  m=m(1:halfN);
  %make the amplitude axis for the first half of the returned vector
  
  subplot (2,1,1); stem(x,m);
  % a general frequency spectrum subplot

  subplot (2,1,2); spectrogram(s, 256, 128, 256, Fs); 
  %subplot of the spectrogram
  
end