function f=fibonacci
fprintf ('Serie Fibonacci:\n')
for k = 0:10
 f=(1/sqrt(5)*((1+sqrt(5)/2)^k))*(-1/sqrt(5)*((1+sqrt(5)/2)^k));
 disp(f);
end 

end 