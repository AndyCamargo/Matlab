cero= wavread('0');
uno=  wavread('1');
dos=  wavread('2');
tres= wavread('3');
cuatro=wavread('4');
cinco=wavread('5');
seis =wavread('6');
siete=wavread('7');
ocho =wavread('8');
nueve=wavread('9');



digito0=normalizar(cero);
digito1=normalizar(uno);
digito2=normalizar(dos);
digito3=normalizar(tres);
digito4=normalizar(cuatro);
digito5=normalizar(cinco);
digito6=normalizar(seis);
digito7=normalizar(siete);
digito8=normalizar(ocho);
digito9=normalizar(nueve);


fftdigito0=abs((fft(digito0)));
fftdigito1=abs((fft(digito1)));
fftdigito2=abs((fft(digito2)));
fftdigito3=abs((fft(digito3)));
fftdigito4=abs((fft(digito4)));
fftdigito5=abs((fft(digito5)));
fftdigito6=abs((fft(digito6)));
fftdigito7=abs((fft(digito7)));
fftdigito8=abs((fft(digito8)));
fftdigito9=abs((fft(digito9)));


patrondigito0=abs(log(fftdigito0)*(-20));
patrondigito1=abs(log(fftdigito1)*(-20));
patrondigito2=abs(log(fftdigito2)*(-20));
patrondigito3=abs(log(fftdigito3)*(-20));
patrondigito4=abs(log(fftdigito4)*(-20));
patrondigito5=abs(log(fftdigito5)*(-20));
patrondigito6=abs(log(fftdigito6)*(-20));
patrondigito7=abs(log(fftdigito7)*(-20));
patrondigito8=abs(log(fftdigito8)*(-20));
patrondigito9=abs(log(fftdigito9)*(-20));
