@main def controlStructures(): Unit =
    val adventureLocation = "Yosemite"
    val locationRating = 9.7
    val adventureRating: Char = 'A'

    // Demonstrating If / Else 
    if locationRating >= 9.0 then
        println(s"$adventureLocation is a must go location")
    else if locationRating >= 7.0 then
        println(s" I will consider $adventureLocation as a location to go")
    else
        println(s"I won't go to $adventureLocation.")

    // Matching
    val difficulty = adventureRating match
        case 'A' => "Challenging"
        case 'B' => "Moderate"
        case 'C' => "Easy"
        case _ => "Unknown"

        println(s"Adventure difficulty: $difficulty")

    //For loop
    val adventureDestinations: List[String] = List("Yosemite", "Niagra Falls", "Grand Canyon")
    for location <- adventureDestinations do
        println(s"Exploring $location.")

    //While Loop
    var days = 3

    while days > 0 do
        println(s"$days day(s) left to go and having fun in $adventureLocation")
        days -= 1
    println("Time to go home now")