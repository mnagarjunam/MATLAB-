%practice question 3
%M.Nagarjuna 17MIS7162
% 19 sept 2019 L17+L18
clc
clear all
A = [18 -4 -8 -10;-4 12 -2 0;-8 -2 25 0]
    [n,m] = size(A);
    for i=1:n-1
        for j=i+1:n
            t=(A(j,i)/A(i,i));
            for k=1:n+1
                A(j,k)=A(j,k)-t*A(i,k);
            end
        end
    end

    A
    I=zeros(1,n);
    for i=n:-1:1
        c=0;
        if(i==n)
            I(i)=A(i,m)/A(i,i);
        else
            for j=i+1:n
                c=c+A(i,i)*I(i);
            end
            I(i)=(1/A(i,i))*(A(i,m)-c);
        end
    end
    I
    