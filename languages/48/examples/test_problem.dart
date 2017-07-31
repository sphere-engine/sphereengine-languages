import 'dart:io';

void main() {
  while(true) {
    String input = stdin.readLineSync();
    var n = int.parse(input);
    if (n == 42) {
    	break;
    }
    print(n);
  }
}
