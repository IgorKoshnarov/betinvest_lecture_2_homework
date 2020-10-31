-module(p08).
-export([compress/1]).

compress(L) ->
    reverse(compress(L, [])).

compress([H, H | T], L) ->
    compress([H | T], L);
compress([H | T], L) ->
    compress(T, [H | L]);
compress([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.