clc
clear

%% Enter your Matrix
rows = 4;
cols = 4;
first_num = 1;
last_num = 80;
A = randi([first_num,last_num],rows,cols)
%%

tau = 0.001;
ii = randi([1,length(A)]);
jj = 1;
d = inf;
v(:,jj) = A(:,ii);

while d>tau
v(:,jj+1) = A*v(:,jj);
v(:,jj+1) = v(:,jj+1)/norm(v(:,jj+1));
d = norm(v(:,jj+1)-v(:,jj));
jj = jj+1;
end
lambda1 = norm(A*v(:,jj)) %Largest eigenvalue
eigvec1 = v(:,jj) %Eigenvector associated with the largest eigenvalue
