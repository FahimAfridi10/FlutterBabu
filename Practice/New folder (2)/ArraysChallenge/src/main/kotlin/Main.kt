/*fun main(args: Array<String>) {
    val max = findMax(arrayOf(7,4,12,6,11,9,8,3,13))
    val min = findMin(arrayOf(7,4,12,6,11,9,8,3,13))

    println("Max Value = $max")
    println("Min value = $min")
}

fun findMax(numbers: Array<Int>): Int{
    var max = numbers[0]
    for (number in numbers){
        if (number > max){
            max = number
        }
    }
    return max
}

fun findMin(numbers: Array<Int>): Int{
    var min = numbers[0]
    for (number in numbers){
        if (number < min){
            min = number
        }
    }
    return min
}*/



//   (Alnernative)
fun main(){
    val max = findMinAndMax(arrayOf(7,4,12,6,11,9,8,3,13), searchMax = true)
    val min = findMinAndMax(arrayOf(7,4,12,6,11,9,8,3,13), searchMax = false)
    println("Max Value = $max")
    println("Min value = $min")
}

fun findMinAndMax(numbers: Array<Int>, searchMax: Boolean): Int{
    var max = numbers[0]
    var min = max

    if (searchMax){
        for (number in numbers){
            if (number > max){
                max = number
            }
        }
        return max
    }

    else{
        for (number in numbers){
            if (number < min){
                min = number
            }
        }
        return min
    }
}