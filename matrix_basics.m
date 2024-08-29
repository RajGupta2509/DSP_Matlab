clc;
a = [1 2 3 4; 5 6 7 8; 1 3 5 7; 2 4 6 8]; %singular matrix
b = [2 3 5 6; 9 5 2 4; 4 5 6 1; 2 9 5 8]; %Non singular matrix

c = a .* b;

d = inv(b);  % Matrix Inverse

i=d*b;       % A X inv(A) = I

% Relational Operators
a<b;
a>b;
a==b;

% Decompose Matrix
d=a(2:4,3:4);

d1=zeros(100,1);
d2=ones(100,1);

% adding two metrices (appending)
d3=[d1; d2];
d3;
%changing value of d3 matrix
%d=changem(d3,2,0);



