main(N) :- step(N,start,goal,aux).
step(1,S,D,_) :-
% Indicate that the disk has been placed
   write('Move top disk from '),
% Indicate the location of the peg
   write(S),
% Indicate where "to"
   write(' to '),
% Indicate the location where the disk will be moved
   write(D),
   nl.
% Call the function
step(N,S,D,A) :-
% If the number of disks is greater than 1
   N>1,
% then M has to be the value of N-1
   M is N-1,
% Repeat the function and this is how the recursive part occurs
   step(M,S,A,D),
   step(1,S,D,_),
   step(M,A,D,S).
