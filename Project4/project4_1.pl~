%  Problem2
% hello
lower_letter(X):- member(X,[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]).

f([X]):- number(X).
f(X):- append(['('|List],[')'],X), e(List).


e(X):- append(List1,[+|List2],X), e(List1), t(List2).
e(X):- append(List1,[-|List2],X), e(List1), t(List2).
e(X):- append([],List,X), t(List).

t(X):- append(List1,[*|List2],X), t(List1), f(List2).
t(X):- append(List1,[/|List2],X), t(List1), f(List2).
t(X):- append([],List,X), f(List).




















