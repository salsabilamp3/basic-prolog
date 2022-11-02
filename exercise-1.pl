parent(john,sarah).
parent(john,jim).
parent(mary,sarah).
parent(mary,jim).
parent(sarah,betty).
parent(dave,betty).
parent(jim,jill).
parent(jim,susan).
parent(kate,jill).
parent(kate,susan).

female(sarah).
female(mary).
female(betty).
female(jill).
female(kate).
female(susan).

male(john).
male(jim).
male(dave).

grandfather(X,Z) :- parent(X,Y), parent(Y,Z), male(X).
sibling(X,Y) :- (parent(Z,X), parent(Z,Y)). 
couple(X,Y) :- parent(X,Z), parent(Y,Z). 
aunt(X,Y) :- parent(Z,Y), (sibling(X,Z); couple(X,W)), not(parent(X,Y)), female(X).