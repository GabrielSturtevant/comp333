%Violeta Brizuela
%comp 333
%project 4
%May 10, 2016
%

female(smom).
female(cmom).
female(tmom).
female(vmom).
female(linda).
female(yasmin).
female(adam).
female(carmen).
female(tomasa).
female(janet).
female(yolanda).
female(magdalena).
female(test).


male(sdad).
male(cdad).
male(tdad).
male(vdad).
male(bill).
male(sabino).
male(venustiano).
male(rigo).
male(daniel).
male(jose).
male(narciso).
male(jr).
male(ben).
male(julio).


parent(smom, sabino).
parent(sdad, sabino).
parent(cmom, carmen).
parent(cdad, carmen).
parent(carmen, bill).
parent(sabino, bill).
parent(carmen, rigo).
parent(sabino, rigo).

parent(tmom, tomasa).
parent(tdad, tomasa).
parent(vmom, venustiano).
parent(vdad, venustiano).
parent(tomasa, linda).
parent(venustiano, linda).
parent(tomasa, magdalena).
parent(venustiano, magdalena).
parent(tomasa, daniel).
parent(venustiano, daniel).

parent(bill, jr).
parent(linda, jr).
parent(bill, ben).
parent(linda, ben).
parent(bill, yasmin).
parent(linda, yasmin).
parent(bill, julio).
parent(linda, julio).
parent(bill, adam).
parent(linda, adam).

parent(rigo, narciso).
parent(daniel, janet).
parent(daniel, yolanda).
parent(magdalena, jose).

mother(X,Y):- parent(X,Y), female(X), X\=Y.
father(X,Y):- parent(X,Y), male(X), X\=Y.

grandparent(X,Y):- parent(X,Z), parent(Z,Y), X\=Y.
granfather(X,Y):- grandparent(X,Y), male(X), X\=Y.
grandmother(X,Y):- grandparent(X,Y), female(X), X\=Y.

brother(X,Y):- parent(Z,Y), parent(Z,X), X\=Y, male(X).
sister(X,Y):- parent(Z,Y), parent(Z,X), X\=Y, female(X).
sibling(X,Y):- parent(Z,X), parent(Z,Y), X\=Y.

uncle(X,Y):- parent(Z,Y), brother(Z,X), X\=Y.
aunt(X,Y):- parent(Z,Y), sister(X,Z),.
cousin(X,Y):- parent(Z,X), parent(W,Y), sibling(Z,W).

ancestor(X,Y):- parent(X,Y).
ancestor(X,Y):- parent(X,Z), ancestor(Z,Y).

descendant(X,Y):- parent(Y,X).
descendant(X,Y):- parent(Y,Z), descendant(X,Z).

relative(X,Y):- ancestor(Z,X), ancestor(Z,Y), X\=Y.
relative(X,Y):- descendant(Z,X), descendant(Z,Y), X\=Y.






















