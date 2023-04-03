function [condh] = moj_cond_householder(A)
[max] = wlasna_max(A); 
[min] = wlasna_min_householder(A);
condh=max/min;
end
