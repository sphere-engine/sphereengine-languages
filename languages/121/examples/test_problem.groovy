class Ideone {
    static void main(String[] args) {
       for (line in System.in.readLines()) {
           if (line != "42") {
               println(line);
           } else {
               break;
           }
       }
    }
}

