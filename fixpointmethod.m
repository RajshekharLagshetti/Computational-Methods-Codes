clear all
%% fixed point method

 f=@(x)x^2-(2*x)-3;
 g=@(x)(2*x+3)^0.5;
 x(1)=4;
 i=1;
 while abs(g(x(i))-x(i))>0.00001
     x(i+1)=g(x(i));
     i=i+1;
 end
