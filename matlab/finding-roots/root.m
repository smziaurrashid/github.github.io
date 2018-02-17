clc;
clear;
disp('>> Choose an Option');
disp('1. Bisection');
disp('2. False-position');
disp('3. Newton-Raphson');
disp('4. All in One');
disp('5. Visit My Website');
disp('6. Exit');
answer=input('>> Choosen Option: ');
if answer==6
    exit;
end
if answer==5
    url='http://www.ziaurrashid.com';
    web(url, '-browser');
end
if answer==1
x1=input('- Enter the value of x1:');
x2=input('- Enter the value of x2:');
y1=eee18(x1);
y2=eee18(x2);
 if (y1*y2)<0
    disp('Initial values are correct');
         for n=1:1:100
        y1=eee18(x1);    
        y2=eee18(x2);
        xm=(x1+x2)/2; 
        y0=eee18(xm);
          if y0==0 
              break
          end
          if y1*y0>0
            x1=xm;            
          else  x2=xm;
           
          end
         end
        M=xm;
    fprintf('Bisection Root: %f\n', M);
    else 
    disp('Initial values are incorrect'); 
 end
         
 
elseif answer==2
    
x1=input('- Enter the value of x1:');
x2=input('- Enter the value of x2:');
y1=eee18(x1);
y2=eee18(x2);
if (y1*y2)<0
    disp('Initial values are correct');

     for n=1:1:10
        y1=eee18(x1); 
        y2=eee18(x2);
        xr=x1-(y1*(x2-x1))/(y2-y1);
        y0=eee18(xr);
   if y0==0 
   break
   elseif abs(y0)<0.00001
       break
   elseif y1*y0>0;
            x2=xr;
          
   else
       x1=xr;
   end
     end
    N=xr;
    fprintf('False Position Root: %f\n', N);
    else
    disp('Initial values are incorrect');
end
    
elseif answer==3
x1=input('Enter the value of x1:');
y1=eee18(x1);
y2=eee19(x1);
if (y1*y2)<0
    disp('Initial values are correct')
     for n=1:1:100
        y1=eee18(x1); 
        y2=eee19(x1);
        xq=x1-(y1/y2); 
        y0=eee18(xq);
        
        if y0==0
        break
        end
        x1=xq;
     end 
    P=xq;
    fprintf('Newton Root: %f\n', P);
    else
    disp('Initial values are incorrect');
end

elseif answer==4
x1=input('- Enter the value of x1:');
x2=input('- Enter the value of x2:');
y1=eee18(x1);
y2=eee18(x2);
 if (y1*y2)<0
    disp('Initial values are correct');
    
    for n=1:1:100
        y1=eee18(x1);    
        y2=eee18(x2);
        xm=(x1+x2)/2; 
        y0=eee18(xm);
        
          if y0==0 
              break
          end
          if y1*y0>0
            x1=xm;            
          else  x2=xm;
           
          end
    end
        M=xm;
    
        for n=1:1:10
        y1=eee18(x1); 
        y2=eee18(x2);
        xr=x1-(y1*(x2-x1))/(y2-y1);
        y0=eee18(xr);
   if y0==0 
   break
   elseif abs(y0)<0.00001
       break
   elseif y1*y0>0;
            x2=xr;
          
   else
       x1=xr;
   end
       end
    N=xr;
        
    for n=1:1:100
        y1=eee18(x1); 
        y2=eee19(x1);
        xq=x1-(y1/y2); 
        y0=eee18(xq);
        
        if y0==0
        break
        end
        x1=xq;
     end 
    P=xq;
    Q=[M,N,P];
    disp('Bisection | False-Position | Newton-Raphson')
    disp('---------------------------------------')
    disp(Q)
    
 else
     disp('Initial values are incorrect');
 end
    

else
    disp('Please, choose any option!');
end