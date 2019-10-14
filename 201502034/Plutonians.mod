param planet;
param place;
param type;
param state;

var a{1..planet,1..place} binary; #check if team i is in place j
var b{1..state,1..type} binary; #check if statement k is made by type l
var c{1..place,1..state} binary; #check if true or false for each place in each statement

maximize z:1;

#Every row and every column should only have one 1.
subject to c1{i in 1..planet}: sum{j in 1..place} a[i,j] == 1;
subject to c2{i in 1..place}: sum{j in 1..planet} a[i,j] == 1;

