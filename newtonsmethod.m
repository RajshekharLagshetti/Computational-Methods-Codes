clear all
syms x 
f=@(x)(x^2-x+2);
df= matlabFunction( diff(f(x)) );
 a=1-i;
%  
%  for i=1:100;
%      if df(a)<=0.001;
%          a=a+1;
%          
%      else
%          break
%      end
%  end
 xb(1)=a;
for i=1:10
    g(i)=xb(i)-(f(xb(i))/df(xb(i)));
    if abs(f(g(i)))<0.0000000001
%         if abs(df(g(i)))<0.00001
%           repeatedroot=0
%         end
   
        break;
        
    else
        xb(i+1)=g(i);
    end
end