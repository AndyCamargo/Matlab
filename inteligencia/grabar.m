clear all
clc
t_in=2;
temp=t_in*20000;%%%%% 0.5 segundos
a1 = analoginput('winsound');%%%%%%%abrir microfono
ch1=addchannel(a1,1);%%%%%%canal
a1.SampleRate=44100;
a1.SamplesPerTrigger=temp;
start(a1);
[d,t]=getdata(a1);
stop(a1);
wavwrite(d,44100,'voz_usuario');
sound(d,44100);

