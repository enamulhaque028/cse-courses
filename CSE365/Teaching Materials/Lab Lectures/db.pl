order(M, N) :-
	write(M), write(N).

descOrder(A, B, C) :-

 A > B, A > C,
 B >= C,
 write(C), write(B), write(A).


descOrder(A, B, C) :-

 A > B, A > C,

 B =< C,
 write(B), write(C), write(A).


descOrder(A, B, C) :-

 A = B, A = C,

 write(A), write(B), write(C).


descOrder(A, B, C) :-

 A = B, A > C,

 write(C), write(B), write(A).


descOrder(A, B, C) :-

 A > B, A = C,

 write(B), write(A), write(C).





descOrder(B, A, C) :-

 A > B, A > C,
 B >= C,
 write(C), write(B), write(A).


descOrder(B, A, C) :-

 A > B, A > C,

 B =< C,
 write(B), write(C), write(A).


descOrder(B, A, C) :-

 A = B, A = C,

 write(A), write(B), write(C).


descOrder(B, A, C) :-

 A = B, A > C,

 write(C), write(B), write(A).


descOrder(B, A, C) :-

 A > B, A = C,

 write(B), write(A), write(C).




descOrder(C, B, A) :-

 A > B, A > C,
 B >= C,
 write(C), write(B), write(A).


descOrder(A, B, C) :-

 A > B, A > C,

 B =< C,
 write(B), write(C), write(A).


descOrder(A, B, C) :-

 A = B, A = C,

 write(A), write(B), write(C).


descOrder(A, B, C) :-

 A = B, A > C,

 write(C), write(B), write(A).


descOrder(A, B, C) :-

 A > B, A = C,

 write(B), write(A), write(C).
