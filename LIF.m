% plotting LIF model
h   = 0.001;   
I   = 1; 
R   =1;                   
Tm  =0.01;                  
tend=1000;  
V(1)=0;
    
  for t=1:tend; 
   V(t+1,1) = (1/(Tm))* [ -( V(t) ) + (R*I) ]*h  + V(t);  %  LIF Model : Tm * dV/dt  = -V(t)+ R*I
    if V(t+1)>=0.99
        V(t+1)=0;
    end
  end
  t=1:tend+1;
  plot(t,V);grid on;xlabel('t(ms)');ylabel('V(v)'); % OR plot(t*h,V);grid on;xlabel('t(s)');ylabel('V(v)');