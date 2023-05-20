/* Rust */
fn main()  {
  for i in 1..=100 {
     let mut line = String::from("");
     if i % 3 == 0 {
       line.push_str("Fizz");
     }
     if i % 5 == 0 {
        line.push_str("Buzz");
     }
     if line.is_empty() {
        println!("{}",i);
     } else {
        println!("{}",line);
     }
  }
}
