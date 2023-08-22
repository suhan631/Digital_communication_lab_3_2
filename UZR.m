%RZ Unipolar line coding
clc;
clear all;
close all;
N=10;
n=randi([0,1],1,N)
%RZ Pulse Shaping
i=1;
a=0; 
b=0.5;
t=0:0.01:length(n);
for j=1:length(t)
 if t(j)>=a && t(j)<=b
 y(j)=n(i); 
 elseif t(j)>b && t(j)<=i
 y(j)=0; 
 else
 i=i+1; 
 a=a+1;
 b=b+1;
 end
end
plot(t,y,'lineWidth', 2); %Linewidth 2 for clear visualization
axis([0,N,-1.5,1.5]); %Axis set-up
grid on;
title('Unipolar return-to-zero (RZ) signaling');