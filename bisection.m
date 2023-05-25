clc
clear all
%% finding root by Bisection Method
a=0;
b=1;
 f=@(x)3*x+sin(x)-exp(x);
 i=1;
 while i<1000;
     
     if f(a)*f(b)>0;
       a=b;
       b=b+1;
       if i==1000;
           disp(' no root between x= 0 to 1000' );
       end
     else
         break;
     end
    i=i+1;
    
 end
 
 emax=input('\n Enter error: ');
 n=ceil(log2((b-a)/emax))
 
 for j=1:n
     x=(a+b)/2;
     
     if f(a)*f(x)<0;
         b=x;
     else
         a=x;
     end
 end
 
