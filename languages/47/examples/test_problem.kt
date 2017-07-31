import java.util.*
 
fun main(args: Array<String>) {
    val sc = Scanner(System.`in`)
    while (true) {
        val input: String = sc.next()
        if (input.trim().toLowerCase() == "42") {
        	break
        }
        println(input);
    }
}
