f=2;
for n=1:100000000
f=f*((2*n*2*n)/((2*n-1)*(2*n+1)));
end
display(f)