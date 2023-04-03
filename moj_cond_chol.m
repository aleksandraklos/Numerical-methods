function [condch] = moj_cond_chol(A)
[max] = wlasna_max(A);
[min] = wlasna_min_chol(A);
condch=max/min
end
