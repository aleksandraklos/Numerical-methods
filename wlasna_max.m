function [lnew] = wlasna_max(A)
tol=0.001;
i=0;
l=0;
[m,~]=size(A);
x=zeros(1,m);
x(1)=1;
x=x';
while 1;
    i = i+1;
    y = A*x;
    lnew = max(abs(y./x));
    if abs(l - lnew) <= tol, break, end
    x = y/norm(y);
    l = lnew;
end

