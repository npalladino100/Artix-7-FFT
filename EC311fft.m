freq=input("Frequency in Hz: ");
nbits= input("Number of bits per sample: ");
chan=input ("Number of channels: ");
sec=input ("Time of recording in seconds: ");
disp('Start speaking.');
a=audiorecorder(freq,nbits,chan);
recordblocking(a,sec);
disp('End of Recording.');

%%b=getaudiodata(a);
c=fft(b);
plot (b)
plot(abs(c))