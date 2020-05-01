%practice question -2
%M.Nagarjuna 17MIS7162
% 1 Aug 2019 L17+L18
clc
clear all
A = [3 0 -2 0 0 -12;0 11 -6 -5 0 90;-15 -6 31 -10 0 -120;0 -1 -2 3 0 -36;0 0 0 0 1 -48]
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
    V=zeros(1,n);
    for i=n:-1:1
        c=0;
        if(i==n)
            V(i)=A(i,m)/A(i,i);
        else
            for j=i+1:n
                c=c+A(i,i)*V(i);
            end
            V(i)=(1/A(i,i))*(A(i,m)-c);
        end
    end
    V
    