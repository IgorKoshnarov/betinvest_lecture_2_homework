-module(p14).
-export([duplicate/1]).

duplicate(L) ->
    reverse(duplicate(L, [])).

duplicate([H | T], L) ->
    duplicate(T, [H, H | L]);
duplicate([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.