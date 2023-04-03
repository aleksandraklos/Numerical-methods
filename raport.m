function raport(n)
b=1:n;

condh = zeros(1, n);
condch = zeros(1, n);
cond2 = zeros(1, n);
timehouse = zeros(1, n);
timechol = zeros(1, n);

for i=2:n
    A = diag(2*ones(i,1),0) + diag(-1*ones(i-1,1),1) + diag(-1*ones(i-1,1),-1);
    tic;
    condh(1,i) = moj_cond_householder(A);
    timehouse(1,i) = toc;
    tic;
    condch(1,i) = moj_cond_chol(A);
    timechol (1, i) = toc;
    cond2(1,i) = cond(A);    
end
figure;
plot(b, condh,'r', b, condch, 'b', b, cond2, 'g');
legend('householder','cholesky', 'cond');

exportgraphics(gcf,'wykres_cond.png');

figure;
plot(b, timehouse,'r', b, timechol, 'b');
legend('householder','cholesky');

exportgraphics(gcf,'wykres_czas.png');
end


