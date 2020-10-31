-module(p07).
-export([flatten/1]).

flatten(X) ->
    reverse(flatten(X, [])).

flatten([H | T], L) ->
    flatten(T, flatten(H, L));
flatten([], L) ->
    L;
flatten(X, L) ->
    [X | L].

reverse(X) ->
    reverse(X, []).

reverse([H | T], L) ->
    reverse(T, [H | L]);
reverse([], L) ->
    L.
