function [H,W]=dtft(x,N)
% uso: [H W]=dtft(x,N)
% x: muestra de longitud L, se supone que de L+1 a infinito la muestra toma valor 0.
% N: número de frecuencias a evaluar. N debe ser mayor que L.
% H: valores complejos de la DTFT
% W: vector de frecuencias correspondiente a la los valores H calculados

N=fix(N); %aproxima a entero redondeando al entero inferior
L=length(x);
if(L>N)
error(' DTFT: numero de muestras, L, debe ser inferior al numero de frec a calcular N')
end
%
% wk=2*pi*k/N con k=0,1,2, ... ,N-1
W=2*pi/N*(0:N-1);
%
medio=ceil(N/2)+1 %aproxima a entero redondeando al entero inferior
%
% evaluamos la DTFT de -pi a pi
%
W(medio:N)=W(medio:N)-2*pi;
W=fftshift(W);
H=fftshift(fft(x,N));
plot(H,N);