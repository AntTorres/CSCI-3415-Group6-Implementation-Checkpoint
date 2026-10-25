:- module mercury_control_structures.
:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module float.
:- import_module int.
:- import_module list.
:- import_module string.

:- type adventure_rating
    ---> challenging
    ;    moderate
    ;    easy.

main(!IO) :-
    AdventureLocation = "Yosemite",
    LocationRating = 9.7,

    % IF / ELSE
    ( if LocationRating >= 9.0 then
        io.format("%s is a must go location!\n",
            [s(AdventureLocation)], !IO)
    else if LocationRating >= 7.0 then
        io.format("I will consider %s a place to go.\n",
            [s(AdventureLocation)], !IO)
    else
        io.write_string("I won't go to that location.\n", !IO)
    ),

    % Case selection
    print_difficulty(challenging, !IO),

    % List traversal
    Locations = ["Yosemite", "Niagara Falls", "Grand Canyon"],
    explore_locations(Locations, !IO),

    % Countdown
    count_days(3, AdventureLocation, !IO).

:- pred print_difficulty(adventure_rating::in,
    io::di, io::uo) is det.

print_difficulty(challenging, !IO) :-
    io.write_string("Adventure difficulty: Challenging\n", !IO).

print_difficulty(moderate, !IO) :-
    io.write_string("Adventure difficulty: Moderate\n", !IO).

print_difficulty(easy, !IO) :-
    io.write_string("Adventure difficulty: Easy\n", !IO).

:- pred explore_locations(list(string)::in,
    io::di, io::uo) is det.

explore_locations([], !IO).

explore_locations([Location | Rest], !IO) :-
    io.format("Explore %s\n", [s(Location)], !IO),
    explore_locations(Rest, !IO).

:- pred count_days(int::in, string::in,
    io::di, io::uo) is det.

count_days(Days, AdventureLocation, !IO) :-
    ( if Days > 0 then
        io.format(
            "%d day(s) left to go and having fun in %s\n",
            [i(Days), s(AdventureLocation)], !IO),

        count_days(Days - 1, AdventureLocation, !IO)
    else
        io.write_string("Time to go home now\n", !IO)
    ).

