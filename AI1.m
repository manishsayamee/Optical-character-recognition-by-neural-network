clear all:
clc
x=[1 1 1;1 -1 1;-1 1 1;-1 -1 1];
Y=[1;-1;-1;-1];
for i=1
    w(i,o)=x(i).*Y
    