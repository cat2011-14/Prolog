�������:- write("���������"),nl,
          write("������������"),nl,
          write("���"),nl,
          write("����� �����"),nl.
% ///////////////////////////////////���������/////////////////////////////////
fib_acc(N, N, F, _, F) :- !.
fib_acc(N, CurN, CurF, CurFOld, F) :-
    NewN is CurN + 1,
    NewF is CurF + CurFOld,
    NewFOld is CurF,
    fib_acc(N, NewN, NewF, NewFOld, F).
���������:-write("������� ����� ���� ���������"),nl,
           read(N),
           fib_acc(N, 0, 0, 1, F),nl,
           write("������� ���� ��������� ��� ������� "),
           write(N),
           write(" �����: "),
           write(F).
% /////////////////////////////////////������������////////////////////////////
summ_gran(_,N,N,F,F) :-!.
summ_gran(M,N,CurN,CurF,F):-
    NewN is CurN + 1,
    NewF is CurF + M,
    summ_gran(M,N,NewN,NewF,F).
������������:- write("������� ������ �����"),nl,
               read(M),
               write("������� ������ �����"),nl,
               read(N),
               summ_gran(M,N,0,0,F),
               write("������������ �����: "),
               write(F).
% /////////////////////////////////////����� ����/////////////////////////
summ_ryad(N,N,F,_,F) :-!.
summ_ryad(N,CurN,CurF,CurFOLD,F) :-
    NewN is CurN + 1,
    NewFOLD is CurFOLD + 2,
    NewF is CurF + NewFOLD,
    summ_ryad(N,NewN,NewF,NewFOLD,F).
���:- write("������� ���-�� ������ ��������� ���� ������ ����� �����"),nl,
      read(N),
      summ_ryad(N,0,0,0,F),nl,
      write("����� ������ "),
      write(N),
      write(" ��������� �����: "),
      write(F).
% /////////////////////////////////�����////////////////////////////////

sum(Fi,Ci,NF):- Ci>=0,NF is Ci + Fi.
sum(Fi,Ci,NF):- Ci<0,NF is Fi.

summ_porog(P,F,F):-F>P.
summ_porog(P,Fold_summ,F):-
    write("������� ����� �����"),nl,
    read(C),nl,
    sum(Fold_summ,C,New_summ),
    write("������������� ��������� ������������ ��������� �����: "),
    write(New_summ),nl,
    summ_porog(P,New_summ,F).
�����_�����:- write("������� ����� ������������"),nl,
    read(P),nl,
    summ_porog(P,0,F),
    write("��������� ������������ ��������� �����: "),
    write(F).
