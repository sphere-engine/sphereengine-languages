use std::io::stdin;
use std::io::BufRead;
use std::io::BufReader;

fn main() {
    for line in BufReader::new(stdin()).lines() {
        match line {
            Ok(ref s) if s == "42" => break,
            Ok(ref s) => println!("{}", s),
            _ => continue
        }
    }
}

