A1=23;
A2=1.2*18;
f = 4000;            % sinusoid freq
T = 1/f;            % period 
fs = T/25;       % time step
tt = -T:fs:T;     % time vector
tm1=(37.2/8)*T;
tm2=-(41.3/21)*T;
X1=A1*cos(2*pi*(4000)*(tt-tm1));
subplot(3,1,1);
plot(tt,X1),grid on
title('Sinusoid #1') 
hold on
X2=A2*cos(2*pi*(4000)*(tt-tm2));
subplot(3,1,2)
plot(tt,X2),grid on
X3=X1+ X2;
subplot(3,1,3);
plot(tt,X3),grid on



% A1=22; 
% A2=1.2*A1; 
% f=0.1; 
% dur=1; 
% tt= -dur : f : dur;
% D=21;
% M=8;
% t=0;
% tm1=(37.2/M)*dur;
% tm2=(41.3/D)*dur;
% X1=A1*cos( (2*pi*4000*(tt-tm1))); 
% subplot(3,1,1); 
% plot(tt,X1),grid on 
% hold on 
% X2=A2*cos( 2*pi*4000*(tt-tm2)); 
% subplot(3,1,2) 
% plot(tt,X2),grid on 
% X3=X1+X2; 
% subplot(3,1,3); plot(tt,X3), grid on


%  tt=linspace(-1,1,50); % 25 samples,2cycles = 50
%  yy= sin(2*pi*tt);
%  plot(4000*tt,yy);


% Addae Mensah Anthony
% Computer Engineering 4
% 7767412
% 10:28 GMT 7th Feb, 2016