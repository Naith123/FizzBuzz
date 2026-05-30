fizzbuzz(N, Output) :-
    (0 is N mod 3 -> Fizz = 'Fizz' ; Fizz = ''),
    (0 is N mod 5 -> Buzz = 'Buzz' ; Buzz = ''),
    (Fizz = '', Buzz = '' -> Output = N ; atom_concat(Fizz, Buzz, Output)).

main :- 
    forall(between(1, 100, N), (fizzbuzz(N, Output), write(Output), nl)),
    halt(0).

:- initialization(main).