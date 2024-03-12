% Before Modification
h=2/5; k=zeros(1,6); m=zeros(1,6); k(1)=0; m(1)=1;
for n=1:5
k(n+1)=k(n)+h;
m(n+1)=m(n)+(-m(n)+k(n))*h;
end
 

% After Modification
h=2/50; t=zeros(1,6); y=zeros(1,6); t(1)=0; y(1)=1;
for n=1:50
t(n+1)=t(n)+h;
y(n+1)=y(n)+(-y(n)+t(n))*h;
end
 
a=0:0.01:2;
b=2*exp(-a)+a-1;
plot(k,m, 'DisplayName', 'Bad approximation'); hold on; 
plot(t,y, 'DisplayName', 'Good approximation'); hold on; 
plot(a,b, 'DisplayName', 'Actual plot'); hold off;
legend('Location','best');
xlabel('X');
ylabel('Y');
title('Comparison Before and After Modification');