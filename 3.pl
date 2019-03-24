справка:- write("фибоначчи"),nl,
          write("произведение"),nl,
          write("ряд"),nl,
          write("сумма чисел"),nl.
% ///////////////////////////////////Фибоначчи/////////////////////////////////
fib_acc(N, N, F, _, F) :- !.
fib_acc(N, CurN, CurF, CurFOld, F) :-
    NewN is CurN + 1,
    NewF is CurF + CurFOld,
    NewFOld is CurF,
    fib_acc(N, NewN, NewF, NewFOld, F).
фибоначчи:-write("Введите номер ряда фибоначчи"),nl,
           read(N),
           fib_acc(N, 0, 0, 1, F),nl,
           write("Элемент ряда фибоначчи под номером "),
           write(N),
           write(" равен: "),
           write(F).
% /////////////////////////////////////Произведение////////////////////////////
summ_gran(_,N,N,F,F) :-!.
summ_gran(M,N,CurN,CurF,F):-
    NewN is CurN + 1,
    NewF is CurF + M,
    summ_gran(M,N,NewN,NewF,F).
произведение:- write("Введите первое число"),nl,
               read(M),
               write("Введите второе число"),nl,
               read(N),
               summ_gran(M,N,0,0,F),
               write("Произведение равно: "),
               write(F).
% /////////////////////////////////////Сумма ряда/////////////////////////
summ_ryad(N,N,F,_,F) :-!.
summ_ryad(N,CurN,CurF,CurFOLD,F) :-
    NewN is CurN + 1,
    NewFOLD is CurFOLD + 2,
    NewF is CurF + NewFOLD,
    summ_ryad(N,NewN,NewF,NewFOLD,F).
ряд:- write("Введите кол-во первых элементов ряда четных целых чисел"),nl,
      read(N),
      summ_ryad(N,0,0,0,F),nl,
      write("Сумма первых "),
      write(N),
      write(" элементов равна: "),
      write(F).
% /////////////////////////////////Порог////////////////////////////////

sum(Fi,Ci,NF):- Ci>=0,NF is Ci + Fi.
sum(Fi,Ci,NF):- Ci<0,NF is Fi.

summ_porog(P,F,F):-F>P.
summ_porog(P,Fold_summ,F):-
    write("Введите новое число"),nl,
    read(C),nl,
    sum(Fold_summ,C,New_summ),
    write("Промежуточный результат суммирования элементов равен: "),
    write(New_summ),nl,
    summ_porog(P,New_summ,F).
сумма_чисел:- write("Введите порог суммирования"),nl,
    read(P),nl,
    summ_porog(P,0,F),
    write("Результат суммирования элементов равен: "),
    write(F).
