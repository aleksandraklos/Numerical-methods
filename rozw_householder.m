
function [Q,R] = rozw_householder(A)

[m,n] = size(A);
Q = eye(m);
for k = 1:n
    z = A(k:m,k);
    v = [ -sign(z(1))*norm(z) - z(1); -z(2:end) ];
    v = v / sqrt(v'*v);
    for j = 1:n
        A(k:m,j) = A(k:m,j) - v*( 2*(v'*A(k:m,j)) );
    end
    for j = 1:m
        Q(k:m,j) = Q(k:m,j) - v*( 2*(v'*Q(k:m,j)) );
    end
end

Q = Q';
R = triu(A);

end
