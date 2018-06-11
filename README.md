# erlang-code

Compilation of erlang programs and tasks.

## Erlang Facts

### Immutability

Example of Erlang immutability:

    A = 5.
    A = A + 10. // will not work, throws an error
    
The example above will not work and will create an error. But you can put it
in a variable that you haven't used yet like:

    B = A + 10.
    
**Notice that variables must start with capital letters.**
    
### Looping in Erlang

Most looping is done trough recursion. Remember the closing conditions.

### Strings

Strings are stored as list of integers. 

### Conditions

No if, else, else-if statements. 

### Functions

    F = fun(X) -> 2*X end.
    
    F(2) // 4
    F(3) // 6
    
    4> C=fun(X) -> X*X end.
    #Fun<erl_eval.6.54118792>
    5> C(6).
    36

    6> lists:sort([5,6,1]).
    [1,5,6]


### Erlang Shell

You can enter the erlang shell by typing the command `erl`


### Tuples

    {A,B} = {(9+45), abc} // {54, abc}
    
## Run Erlang Programs

    $ erl 
    1> c(hello).
    {ok,hello}
    2> hello:hello_world().
    Hello World
    ok
    3> 


## Erlang Resources

Good resources to learn erlang:

- https://erldocs.com/ - good API reference
- www.erlang.org - offical erlang site
- www.tryerlang.org - editor where you can test erlang commands
- www.learnyousomeerlang.com - free erlang book
