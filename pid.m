
clear all
clc
num = [ 1 ]
dem = [ 1 3 1]
gp=tf(num,dem)
M=[1]
M=feedback(gp,M)
step(M)
