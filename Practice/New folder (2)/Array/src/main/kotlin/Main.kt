fun main(args: Array<String>) {
    val names = arrayOf("Fahim", "Afridi", "Rahman")
    val mixedElements = arrayOf(4,5,6,7, "Name1", 'c')
    //  Here 4,5,6,7 are Int,,,  "Name1" is String,,,  'c' is char 
    names[0] = "BigBoss"
    println("First element ${names[0]}")
    println("The size of the array is ${names.size}")
    println()

    for (name in names){
        println(name)
    }
    println()

    for (i in mixedElements){
        println(i)
    }
    println()

    for (i in mixedElements){
        if (i is Int){
            println(i)
        }
    }

}