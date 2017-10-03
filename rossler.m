% MATLAB Code for embeded signals in my proposed approach


function[]=rossler()  % Function declaration

tmax=100;
h=.001; % Increment size
N=tmax/h; % Number of iterations

% Initial Values
t0=0;
x0=10;
y0=10;
z0=10; 
xr0=10;
yr0=10;
zr0=10; 
e10=0;
e20=0;
e30=0;

x(1)=x0;y(1)=y0;z(1)=z0;t1=t0;
xr(1)=xr0;yr(1)=yr0;zr(1)=zr0;
e1(1)=e10;e2(1)=e20;e3(1)=e30;t1=t0;
i=1;
%Feedback Gains
k1=1087;
k2=758;
k3=-54.5;

t(1)=0;
while i<N
   
  
   kx(1)=h*fx(t1,x(i),y(i),z(i));
   ky(1)=h*fy(t1,x(i),y(i),z(i));
   kz(1)=h*fz(t1,x(i),y(i),z(i));
   
   kxr(1)=h*fxr(t1,xr(i),yr(i),zr(i));  
   kyr(1)=h*fyr(t1,xr(i),yr(i),zr(i));
   kzr(1)=h*fzr(t1,xr(i),yr(i),zr(i));
   
   ke1(1)=h*fe1(t1,e1(i),e2(i),e3(i));
   ke2(1)=h*fe2(t1,e1(i),e2(i),e3(i));
   ke3(1)=h*fe3(t1,e1(i),e2(i),e3(i),k1,k2,k3,xr(i),zr(i),x(i),z(i));
   
      
   kxr(2)=h*fxr(t1+h/2,xr(i)+kxr(1)/2,yr(i)+kyr(1)/2,zr(i)+kzr(1)/2);
   kyr(2)=h*fyr(t1+h/2,xr(i)+kxr(1)/2,yr(i)+kyr(1)/2,zr(i)+kzr(1)/2);
   kzr(2)=h*fzr(t1+h/2,xr(i)+kxr(1)/2,yr(i)+kyr(1)/2,zr(i)+kzr(1)/2);
   
   kx(2)=h*fx(t1+h/2,x(i)+kx(1)/2,y(i)+ky(1)/2,z(i)+kz(1)/2);
   ky(2)=h*fy(t1+h/2,x(i)+kx(1)/2,y(i)+ky(1)/2,z(i)+kz(1)/2);
   kz(2)=h*fz(t1+h/2,x(i)+kx(1)/2,y(i)+ky(1)/2,z(i)+kz(1)/2);
   
   ke1(2)=h*fe1(t1+h/2,e1(i)+ke1(1)/2,e2(i)+ke2(1)/2,e3(i)+ke3(1)/2);
   ke2(2)=h*fe2(t1+h/2,e1(i)+ke1(1)/2,e2(i)+ke2(1)/2,e3(i)+ke3(1)/2);
   ke3(2)=h*fe3(t1+h/2,e1(i)+ke1(1)/2,e2(i)+ke2(1)/2,e3(i)+ke3(1)/2,k1,k2,k3,xr(i),zr(i),x(i),z(i));
   
   
   kx(3)=h*fx(t1+h/2,x(i)+kx(2)/2,y(i)+ky(2)/2,z(i)+kz(2)/2);
   ky(3)=h*fy(t1+h/2,x(i)+kx(2)/2,y(i)+ky(2)/2,z(i)+kz(2)/2);
   kz(3)=h*fz(t1+h/2,x(i)+kx(2)/2,y(i)+ky(2)/2,z(i)+kz(2)/2);
   
   kxr(3)=h*fxr(t1+h/2,xr(i)+kxr(2)/2,yr(i)+kyr(2)/2,zr(i)+kzr(2)/2);
   kyr(3)=h*fyr(t1+h/2,xr(i)+kxr(2)/2,yr(i)+kyr(2)/2,zr(i)+kzr(2)/2);
   kzr(3)=h*fzr(t1+h/2,xr(i)+kxr(2)/2,yr(i)+kyr(2)/2,zr(i)+kzr(2)/2);

   ke1(3)=h*fe1(t1+h/2,e1(i)+ke1(2)/2,e2(i)+ke2(2)/2,e3(i)+ke3(2)/2);
   ke2(3)=h*fe2(t1+h/2,e1(i)+ke1(2)/2,e2(i)+ke2(2)/2,e3(i)+ke3(2)/2);
   ke3(3)=h*fe3(t1+h/2,e1(i)+ke1(2)/2,e2(i)+ke2(2)/2,e3(i)+ke3(2)/2,k1,k2,k3,xr(i),zr(i),x(i),z(i));
      
   
   kx(4)=h*fx(t1+h,x(i)+kx(3),y(i)+ky(3),z(i)+kz(3));
   ky(4)=h*fy(t1+h,x(i)+kx(3),y(i)+ky(3),z(i)+kz(3));
   kz(4)=h*fz(t1+h,x(i)+kx(3),y(i)+ky(3),z(i)+kz(3));
   
   kxr(4)=h*fxr(t1+h,xr(i)+kxr(3),yr(i)+kyr(3),zr(i)+kzr(3));
   kyr(4)=h*fyr(t1+h,xr(i)+kxr(3),yr(i)+kyr(3),zr(i)+kzr(3));
   kzr(4)=h*fzr(t1+h,xr(i)+kxr(3),yr(i)+kyr(3),zr(i)+kzr(3));

   ke1(4)=h*fe1(t1+h,e1(i)+ke1(3),e2(i)+ke2(3),e3(i)+ke3(3));
   ke2(4)=h*fe2(t1+h,e1(i)+ke1(3),e2(i)+ke2(3),e3(i)+ke3(3));
   ke3(4)=h*fe3(t1+h,e1(i)+ke1(3),e2(i)+ke2(3),e3(i)+ke3(3),k1,k2,k3,xr(i),zr(i),x(i),z(i));
   
      
   x(i+1)=x(i)+(kx(1)+2*kx(2)+2*kx(3)+kx(4))/6;
   y(i+1)=y(i)+(ky(1)+2*ky(2)+2*ky(3)+ky(4))/6;
   z(i+1)=z(i)+(kz(1)+2*kz(2)+2*kz(3)+kz(4))/6;
   
   xr(i+1)=xr(i)+(kxr(1)+2*kxr(2)+2*kxr(3)+kxr(4))/6;
   yr(i+1)=yr(i)+(kyr(1)+2*kyr(2)+2*kyr(3)+kyr(4))/6;
   zr(i+1)=zr(i)+(kzr(1)+2*kzr(2)+2*kzr(3)+kzr(4))/6;
   
   e1(i+1)=e1(i)+(ke1(1)+2*ke1(2)+2*ke1(3)+ke1(4))/6;
   e2(i+1)=e2(i)+(ke2(1)+2*ke2(2)+2*ke2(3)+ke2(4))/6;
   e3(i+1)=e3(i)+(ke3(1)+2*ke3(2)+2*ke3(3)+ke3(4))/6;
   
   t(i+1)=t(i)+h; % Increment time variable 	      
   i=i+1; 
 
end



% Display plot of x with respect to y where x and y are ARRAYS

figure; % Create a new empty figure to plot e
plot(t,e1);
xlabel('t values');
ylabel('e1 values');
legend('e1(t) plot');

figure; % Create a new empty figure to plot e2
plot(t,e2);
xlabel('t values');
ylabel('e2 values');
legend('e2(t) plot');

figure; % Create a new empty figure to plot e3
plot(t,e3); %plot(t,e3);
xlabel('t values');
ylabel('e3 values');
legend('e3(t) plot');

figure; % Create a new empty figure to plot de3/dt
plot(t,(xr.*zr-x.*z));
xlabel('t values');
ylabel('de3(t)/dt values');
legend('m(t)=de3(t)/dt plot');

figure; % Create a new empty figure to plot xr, yr, zr
plot3(xr,yr,zr);
xlabel('xr values');
ylabel('yr values');
zlabel('zr values');
legend('3D plot  xr, yr, zr');

% Display plot of x with respect to y where x and y are ARRAYS

figure; % Create a new empty figure to plot X
plot(t,x);
xlabel('t values');
ylabel('x values');
legend('x(t) plot');

figure; % Create a new empty figure to plot Y
plot(t,y);
xlabel('t values');
ylabel('y values');
legend('y(t) plot');

figure; % Create a new empty figure to plot Z
plot(t,z); %plot(t,z);
xlabel('t values');
ylabel('z values');
legend('z(t) plot');


figure; % Create a new empty figure to plot Xr
plot(t,xr);
xlabel('t values');
ylabel('xr values');
legend('xr(t) plot');

figure; % Create a new empty figure to plot Yr
plot(t,yr);
xlabel('t values');
ylabel('yr values');
legend('yr(t) plot');

figure; % Create a new empty figure to plot Zr
plot(t,zr); %plot(t,zr);
xlabel('t values');
ylabel('zr values');
legend('zr(t) plot');


figure; % Create a new empty figure to plot X,Y,Z
plot3(x,y,z);
xlabel('x values');
ylabel('y values');
zlabel('z values');
legend('3D plot x,y,z');

%Transmitter Equations

function[f]=fx(t,x,y,z)  % Rossler Equation #1
			f=(-y-z);

function[f]=fy(t,x,y,z)  % Rossler Equation #2
			f=(x+0.2*y);

function[f]=fz(t,x,y,z)  % Rossler Equation #3
			f=(0.2-5.7*z+x.*z+10*sin(t));

%Receiver Equations

function[f]=fxr(t,xr,yr,zr)  % Rossler Equation #1
			f=(-yr-zr);
            
function[f]=fyr(t,xr,yr,zr)  % Rossler Equation #2
			f=(xr+0.2*yr);            

function[f]=fzr(t,xr,yr,zr)  % Rossler Equation #3
			f=(0.2-5.7*zr+xr.*zr);
            
%Error Equations

function[f]=fe1(t,e1,e2,e3)  % Rossler Equation #1
			f=(-e2-e3);

function[f]=fe2(t,e1,e2,e3)  % Rossler Equation #2
			f=(e1+0.2*e2);

function[f]=fe3(t,e1,e2,e3,k1,k2,k3,xr,zr,x,z)  % Rossler Equation #3
			f=(k1*e1+k2*e2-5.7*e3+k3*e3+xr.*zr-z.*x);

            
                        
            