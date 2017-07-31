object Main extends App {
	var line = readLine();
	while(false == line.equals("42")) {
		System.out.println(line);
		line = readLine();
	};
}
