-module(p09).
-export([pack/1]).

pack(L) ->
    reverse(pack(L, [])).

pack([H | T], [[H | T1] | T2]) ->
    pack(T, [[H, H | T1] | T2]);
pack([H | T], L) ->
    pack(T, [[H] | L]);
pack([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.