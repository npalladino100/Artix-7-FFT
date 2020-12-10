freq=10000;
nbits= 16;
chan=1;
sec=5;
disp('Start recording.');
a=audiorecorder(freq,nbits,chan);
recordblocking(a,sec);
disp('End of Recording.');

b=getaudiodata(a);
c=fft(b);

plot(abs(c))
axis([0 20000 0 max(abs(c))]);
