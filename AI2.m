E=[1 1 1 1 1 -1 -1 -1 1 1 1 1 1 -1 -1 -1 1 1 1 1];
F=[1 1 1 1 1 -1 -1 -1 1 1 1 1 1 -1 -1 -1 1 -1 -1 -1];
w(1:20)=0;
b=0;
x(1,1:20)=E;
x(2,1:20)=F;
y=[1;-1];
for i=1:2
    w=w+x(i,1:20)*y(i);
    b=b+y(i);
end
disp('the weights matrix is=');
disp(w);
disp('the b matrixs is =');
disp(b);