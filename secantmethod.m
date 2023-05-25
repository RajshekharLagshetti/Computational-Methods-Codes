clear all
syms x
 f=@(x)3*x+sin(x)-exp(x);
 df=diff(f,x)
 a=0;
 b=1;
 for i=1:100;
     if abs(f(a))<5||abs(f(b))<5
         a=a+1;
         b=b+1;
     else
         break
     end
 end
 
 x=b-((f(b)*(b-a))/(f(b)-f(a)));
 while abs(f(x))>0.0001;
     x=b-((f(b)*(b-a))/(f(b)-f(a)))
     if f(a)*f(x)<0;
         b=x;
     else
          a=x;
     end
  end
                     
                       
                       