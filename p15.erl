-module(p15).
-export([replicate/2]).

replicate(L, N) ->
    reverse(replicate(L, N, N, [])).

replicate([H | T], N, 1, L) ->
    replicate(T, N, N, [H | L]);
replicate([H | T], N, C, L) ->
    replicate([H | T], N, C - 1, [H | L]);
replicate([], _, _, L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.