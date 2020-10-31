-module(p13).
-export([decode/1]).

decode(L) ->
    reverse(decode(L, [])).

decode([{1, H} | T], L) ->
    decode(T, [H | L]);
decode([{N, H} | T], L) ->
    decode([{N - 1, H} | T], [H | L]);
decode([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.