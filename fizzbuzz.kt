@Suppress("UNUSED_PARAMETER")
fun main(args: Array<String>) {
    for (i in 1..100) {
        var p = true
        if (i%3 == 0) {
            print("Fizz")
            p = false
        }
        if (i%5 == 0) {
            print("Buzz")
            p = false
        }
        if (p) {
            print(i)
        }
        println("")
   }
}
