:- module mercury_data_types_or_binding.
:- interface.

:- import_module io.

:- pred main(io::di, io::uo) is det.

:- implementation.

:- import_module bool.
:- import_module int.
:- import_module list.
:- import_module string.
:- import_module char.

main(!IO) :-
    % Explicit Declarations using qualification
    Name = ("Jimmy" : string),
    Age = (22 : int),
    Height = (5.8 : float),
    IsAdventurer = (yes : bool),
    AdventureRating = ('A' : char),

    AdventurerStatus =
        (if IsAdventurer = yes then "yes" else "no"),

    io.format("%s is %d years old.\n", [s(Name), i(Age)], !IO),

    io.format("Adventure Statistics - Height: %.1f, Adventurer Status: %s, Adventure Rating: %c\n", [f(Height), s(AdventurerStatus), c(AdventureRating)], !IO),

    % Type Inference
    AdventureLocation = "Yosemite",
    MaxRating = 10,
    LocationRating = 9.7,

    io.format("%s is rated %.1f out of %d\n", [s(AdventureLocation), f(LocationRating), i(MaxRating)], !IO).
    