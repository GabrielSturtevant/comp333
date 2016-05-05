%  Problem2

lower_letter(X):- member(X,[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]).

f([X]):- number(X).
f([X]):- lower_letter(X).
f(X):- append(['('|List],[')'],X), e(List).


e(X):- append(List1,[+|List2],X), e(List1), t(List2).
e(X):- append(List1,[-|List2],X), e(List1), t(List2).
e(X):- append([],List,X), t(List).

t(X):- append(List1,[*|List2],X), t(List1), f(List2).
t(X):- append(List1,[/|List2],X), t(List1), f(List2).
t(X):- append([],List,X), f(List).

% Problem3

subseq([],[]).
subseq([H|T],[H|R]):- subseq(T,R).
subseq([H|T],R):- subseq(T,R).
sum([],0).
sum([H|T],N):- sum(T,N1), N is N1 + H.
subseqSum(L,M,X):-subseq(L,X), sum(X,M).

% problem 4

final(3).
is_end(X,[]):-final(X).

fsm(0,[a|T]):-fsm(0,T).
fsm(0,[b|T]):-fsm(0,T).
fsm(0,[a|T]):-fsm(1,T).

fsm(1,[b|T]):-fsm(2,T).

fsm(2,[b|T]):-fsm(3,T).

fsm(3,[a|T]):-fsm(3,T).
fsm(3,[b|T]):-fsm(3,T).
fsm(3,T):- is_end(3,T).
