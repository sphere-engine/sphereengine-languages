importPackage(java.io);
importPackage(java.lang);

var reader = new BufferedReader( new InputStreamReader(System['in']) );

while(true) {
	var line = reader.readLine();
	if(line == null || line == "42") {
		break;
	} else {
		System.out.println(line);
	}
}
