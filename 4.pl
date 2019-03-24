справка:-write('сумма'),nl,
         write('максимум'),nl,
         write('удаление'),nl.
sum_list([], Sum,Sum):-!.
sum_list([Head|Tail], Sum,Res):-
   NewSum is Sum + Head,
   sum_list(Tail,NewSum,Res).

сумма:-ListA = [7,5,3],K=0,
sum_list(ListA,K,Res),write(Res).



question(A,B,C):-A>=B,C is A.
question(A,B,C):-A<B,C is B.

max_list([], MaxElem,MaxElem):-!.
max_list([Head|Tail], MaxElem,Res):-
    question(Head,MaxElem,NewMaxElem),
   max_list(Tail,NewMaxElem,Res).

index_0([Head|_],Res):-
    Res is Head.

максимум:-ListA = [1,7,5,3],index_0(ListA,MaxElemStart),
max_list(ListA,MaxElemStart,Res),write(Res).

add(E,[],[E]).
  add(E,[H|T],[H|T1]):-add(E,T,T1).
add1(_E,[],[]).
  add1(E,[H|T],[H|T1]):-add1(E,T,T1).

nth01(0, [Elem|_Tail], Elem):-!.
nth01(Index, _List, _Elem):-
   Index < 0, !, fail.
nth01(Index, [_Head|Tail], Elem):-
   NextIndex is Index - 1,
   nth0(NextIndex, Tail, Elem).

length([], Length, Length):-!.
length([_Head|Tail], Buffer, Length):-
   NewBuffer is Buffer + 1,
   length(Tail, NewBuffer, Length).

usl(ListA,ListB,ListC):-length(ListA,0,Len),Len mod 2 > 0,nth01(Len-1,ListA,Elem),
   add(Elem,ListB,ListC).
usl(ListA,ListB,ListC):-length(ListA,0,Len),Len mod 2 > (-1),Len mod 2 < (1),nth01(Len-1,ListA,Elem),
   add1(Elem,ListB,ListC).

p([M, _K | L], [M | L2]) :-p(L, L2).
p(_,[]).

удаление:-ListA = [1,2,3,4,5,6,7,8],p(ListA,ListB),usl(ListA,ListB,ListC),write(ListC).
