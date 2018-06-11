%%%-------------------------------------------------------------------
%%% @author tmgdev
%%% @copyright (C) 2018, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Jun 2018 2:55 PM
%%%-------------------------------------------------------------------
-module(hello_program).
-author("haris").

%% API
-export([hello/0]).

%%% How to run program:
%%% 1> Pid = spawn(fun hello_program:hello/0).
%%% <0.36.0>
%%% 2> Pid ! john.
%%% john
%%% 3> Pid ! {self(), john}.
%%% {<0.34.0>,john}
%%% 4> Pid ! {self(), john}, receive
%%% 4> Response -> Response end.
%%% "Hello John."
%%% 5>

hello() ->
  receive
    {FromPID, Who} ->
      case Who of
          john -> FromPID !"Hello John.";
          andrew -> FromPID !"Hello Andrew.";
          daniel -> FromPID !"Hello Daniel.";
          _ -> FromPID !"Unknown selection."
      end,
      hello()
  end.
