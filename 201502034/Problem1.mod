#primal linear program
var x{1..3};

maximize z: -x[1] + 7*x[2] + 3*x[3];

subject to c1: x[1] + x[2] + x[3] >= 10;
subject to c2: 2*x[1] - x[2] - x[3] == 2;
subject to c3: 2*x[1] - 2*x[2] - 3*x[3] >= 6;
subject to c4: x[2] >= 0;


#dual formulation
#var x{1..3};

#maximize z: 10*x[1] + 2*x[2] + 6*x[3];

#subject to c1: x[1] + 2*x[2] + 2*x[3] == 1;
#subject to c2: x[1] - x[2] - 3*x[3] == -3;
#subject to c3: x[1] - x[2] - 2*x[3] <= 7;
#subject to c4{i in 1..3}: x[i] >= 0;