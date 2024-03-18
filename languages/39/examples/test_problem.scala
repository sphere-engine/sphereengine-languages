import scala.io.StdIn.readLine

object Main {
  def main(args: Array[String]): Unit = {
    var line = readLine()
    while(false == line.equals("42")) {
		println(line)
		line = readLine()
	}
  }
}
