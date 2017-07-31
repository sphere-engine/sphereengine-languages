class FantomSay {
	Void main(Str[] args) {

		while (true) {
			str := Env.cur.in.readLine
			n := Int.fromStr (str, 10, false)
			if (n == 42) {
				break;
			}
			echo(n)
		}
	}
}
