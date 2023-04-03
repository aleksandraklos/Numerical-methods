function [l]= wlasna_min_chol(A)
[m,~] = size(A);
x=zeros(1,m);
x(1)=1;
x=x';

L = chol(A);
for i=1:100
    x = x/norm(x);
    t = L'\x;
    z = L\t;
    r = (max(abs(z./x)));
    x = z;
end
l = 1/r;    
x = x/norm(x);
end


