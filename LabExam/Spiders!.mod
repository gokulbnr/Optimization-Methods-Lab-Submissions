param m;
param n;

var x{1..m,1..n} binary;
#Padded with width 2 on all sides to accomodate boundary conditions.
var y{1..m+4,1..n+4} binary;
var ran binary;

#objective function
minimize z: sum{i in 1..m,j in 1..n} x[i,j];

#Constraints
subject to c4{i in 1..m,j in 1..n,k in 1..m,l in 1..n:abs(k-i)+abs(l-j)=3}: x[i,j] + x[k,l] <= 1;

subject to c1sum{i in 1..m,j in 1..n}: y[i+2,j+2] == 1;
subject to c2{i in 1..m,j in 1..n}: x[i,j] == y[i+2,j+2];

subject to c3{i in 1..m,j in 1..n,k in 1..m+2,l in 1..n+2:abs(k-i)+abs(l-j)=3}: y[k+2,l+2] + y[i+2,j+2] <= 2;

#subject to c4{i in 1..m,j in 1..n,k in 1..m,l in 1..n,o in 1..m,p in 1..n,q in 1..m,r in 1..n:abs(k-i)+abs(l-j)==abs(q-o)+abs(r-p)}: x[i,j] + x[o,p] <= 1;
