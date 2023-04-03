function [l]= wlasna_min_householder(A)
[m,~] = size(A);
x=zeros(1,m);
x(1)=1;
x=x';
[Q,R] = rozw_householder(A);
for i=1:100
    x = x/norm(x);
    t = R\x;
    z = Q\t;
    r = (max(abs(z./x)));
    x = z;
end
l = 1/r;
x = x/norm(x);
end


