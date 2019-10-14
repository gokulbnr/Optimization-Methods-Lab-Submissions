#Question 2.2
import numpy as np
import math as m

#Matrix Initializations
A=np.array([[1,1,0,0,0],
            [1,0,1,0,0],
            [1,0,0,1,0],
            [1,0,0,0,1],
            [0,1,1,0,0],
            [0,1,0,1,0],
            [0,1,0,0,1],
            [0,0,1,1,0],
            [0,0,1,0,1],
            [0,0,0,1,1],
            [1,0,0,0,0],
            [0,1,0,0,0],
            [0,0,1,0,0],
            [0,0,0,1,0],
            [0,0,0,0,1],
            [-1,0,0,0,0],
            [0,-1,0,0,0],
            [0,0,-1,0,0],
            [0,0,0,-1,0],
            [0,0,0,0,-1]])

b=np.array([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0])

x=np.array([0,0,0,0,0])

#Initializations
n=5
v0=0
D0=n*pow((n*1),(2*n))*np.identity(n)
V=pow((2*n),n)*pow((n*1),(n*n))
v=pow(n,(-1*n))*pow((n*1),(-1*n*n*(n+1)))
ts=m.ceil(2*(n+1)*m.log(V/v))

#Iterations from t=0 to t=ts
for i in range(0,int(ts)):
    k = np.unique(np.less_equal(np.dot(A,x),b))
    if k[0]==True:
        break
    else:
        for j in range(0,A.shape[1]):
            if A[j]*x<b[j]:
                x=x+((1/(n+1))*D0*A[j])/m.sqrt(np.transpose(A[j])*D0*A[j])
                D0=((n*n)/(n*n-1))*(D0-(2/(n*n-1))*(D0*A[j]*np.transpose(A[j])*D0)/(np.transpose(A[j])*D0*A[j]))

#Optimal Solution [x1,x2,x3,x4,x5]
print x
