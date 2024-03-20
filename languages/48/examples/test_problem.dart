import 'dart:io';

void main() {
  while(true) {
    String? input = stdin.readLineSync();
    if (input == null) {
      continue;
    }
    var n = int.parse(input);
    if (n == 42) {
      break;
    }
    print(n);
  }
}
