-module(complex6).

-export([bar/1, f/0, foo/1]).

-on_load({init, 0}).

init() -> ok = erlang:load_nif("./complex6_nif", 0).

foo(_X) -> exit(nif_library_not_loaded).

bar(_Y) -> exit(nif_library_not_loaded).

f() -> io:format("hej").
