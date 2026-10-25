@main def bindings(): Unit =

    //Explicit Types
    val name: String = "Jimmy"
    val age: Int = 22
    val height: Double = 6.2
    val isAdventurer: Boolean = true
    val adventureRating: Char = 'A'

    println(s"$name is $age years old")
    println(s"Adventure Statistics - Height: $height, Adventurer Status: $isAdventurer, Adventure Rating: $adventureRating ")

    //Implicit Types
    val adventureLocation = "Yosemite"
    val maxRating = 10 
    val locationRating = 9.7

    println(s"$adventureLocation is rated $locationRating out of $maxRating")

    // reassinging val binding
    val description = "This place is beautiful"

    // Uncommenting below causes compilation error
    // description = "This place is ugly"

    println(s"Description = $description")

    //var: the binding can be reassigned.
    var natureRating = 4
    println(s"Nature Rating: $natureRating")

    //var was able to be changed
    natureRating = 10
    println(s"Nature Rating: $natureRating")