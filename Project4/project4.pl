male(gabriel).
male(charles).
male(william).
male(george).
male(drew).
male(jonathen).
male(bob).
male(jim).
male(andy).
male(sean).
male(patrick).

female(karen).
female(nancy).
female(jill).
female(morgan).
female(sarah).
female(heidi).
female(eileen).
female(kathy).
female(andrea).

parent(charles, gabriel).
parent(karen, gabriel).
parent(william, charles).
parent(eileen, charles).
parent(george, william).
parent(heidi, william).
parent(drew, eileen).
parent(sarah, eileen).
parent(jim, karen).
parent(nancy, karen).
parent(jill, nancy).
parent(bob, nancy).
parent(morgan, jim).
parent(jonathen, jim).
parent(jim, kathy).
parent(nancy, kathy).
parent(charles, andrea).
parent(karen, andrea).
parent(kathy, sean).
parent(andy, sean).
parent(kathy, patrick).
parent(andy, patrick).

mother(A,B):- parent(A,B), female(A), A\=B.
father(A,B):- parent(A,B), male(A), A\=B.
brother(A,B):- parent(X,A), parent(X,B), male(A), A\=B.
sister(A,B):- parent(X,A), parent(X,B), female(A), A\=B.
aunt(A,B):- parent(X,B), sister(A,X), A\=B.
uncle(A,B):- parent(X,B), brother(A,X), A\=B.
grandfather(A,B):- parent(X,B), parent(A,X), male(A), A\=B.
grandmother(A,B):- parent(X,B), parent(A,X), female(A), A\=B.
firstCousin(A,B):- parent(X,A), aunt(X,B), A\=B.
firstCousin(A,B):- parent(X,A), uncle(X,B), A\=B.
descendant(A,B):- parent(X,B), parent(A,X), A\=B.
descendant(A,B):- parent(A,B), A\=B.
descendant(A,B):- parent(X,B),parent(Y,X), parent(A,Y), A\=B.
relative(A,B):- descendant(X,A), descendant(X,B), A\=B.
relative(A,B):- descendant(A,X), descendant(B,X), A\=B.
relative(A,B):- descendant(X,A), descendant(B,X), A\=B.
relative(A,B):- descendant(A,X), descendant(X,B), A\=B.


















