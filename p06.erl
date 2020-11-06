-module(p06).
-export([is_palindrome/1]).

is_palindrome(L) ->
    L =:= reverse(L).

reverse(L) ->
    reverse(L, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.