km=14
tm=2.85
num=[0 14]
dem[2.85 1]
g=tf(num,dem)
step(g)
ka=5
num=[0 ka*km]
dem=[tm 1]
g=tf(num,dem)
step(g)
grid on;
g1=feedback(g,1)
step(g1)
grid on;
%%%%%%%%%
dem=[tm (1+ka*km)]
g2=tf(num,dem)
step(g2)



