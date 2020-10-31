-module(p12).
-export([decode_modified/1]).

decode_modified(L) ->
    reverse(decode_modified(L, [])).

decode_modified([{1, H} | T], L) ->
    decode_modified(T, [H | L]);
decode_modified([{N, H} | T], L) ->
    decode_modified([{N - 1, H} | T], [H | L]);
decode_modified([H | T], L) ->
    decode_modified(T, [H | L]);
decode_modified([], L) ->
    L.

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.