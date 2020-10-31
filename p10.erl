-module(p10).
-export([encode/1]).

encode(L) ->
    reverse(encode(L, [])).

encode([H | T], [{N, H} | T1]) ->
    encode(T, [{N + 1, H} | T1]);
encode([H | T], L) ->
    encode(T, [{1, H} | L]);
encode([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.