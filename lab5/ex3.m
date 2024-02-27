y=zeros(1,N+1);
y(1)=0;
for n=1:N
y(n+1)=y(n)+n^4;
end