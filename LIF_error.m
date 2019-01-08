% RMSE and NRMSE between the original and the proposed LIF model
clear;
close all;
clc;

% original LIF model
h   = 0.001;    
I   = 1; 
R   =1;                   
Tm  =0.01;                  
tend=1000;  
V=zeros(tend,1);  
v=zeros(tend,1);


V(1)=0;

  for t=1:tend; 
   V(t+1,1) = (1/(Tm))* (-( V(t) ) + (R*I) )*h  + V(t);
    if V(t+1)>=0.99
        V(t+1)=0;
    end
  end
  t=1:tend+1;
  plot(t,V);grid on;xlabel('t(ms)');ylabel('V(v)') 
  hold on
    
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
 % proposed LIF model 

v(1)=0;
m = 0.125;


  for t=1:tend; 
   v(t+1,1) = m * ( -( v(t) ) + (R*I) ) + v(t);
    if v(t+1)>=0.99
        v(t+1)=0;
    end
  end
  t=1:tend+1;
  plot(t+1,v,'r');grid on; xlabel('t(ms)');ylabel('V(v)');legend('Original','Proposed')
 
%  error

  for t=1:tend;  
  e= ( V(t+1,1) - v(t+1,1) );       % Error        
   MSE=  mean(e.^2);                % Mean Square Error
   RMSE = sqrt(MSE);                % Root Mean Square Error                 
   percentage= RMSE *100;
                                           
  end
  
  display(RMSE);
  display(percentage);
   

  
  