param m;
param n;
param c{j in 1..m,i in 1..n};
var x{i in 1..m} binary;

minimize elevators: sum{i in 1..m} x[i];
subject to constraints{i in 1..n,j in i+1..n}: sum{k in 1..m} x[k]*c[k,j]*c[k,i] >= 1;