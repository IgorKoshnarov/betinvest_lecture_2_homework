-module(p11).
-export([encode_modified/1]).

encode_modified(L) ->
    reverse(encode_modified(L, [])).

encode_modified([H | T], [{N, H} | T1]) ->
    encode_modified(T, [{N + 1, H} | T1]);
encode_modified([H | T], [H | T1]) ->
    encode_modified(T, [{2, H} | T1]);
encode_modified([H | T], L) ->
    encode_modified(T, [H | L]);
encode_modified([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.