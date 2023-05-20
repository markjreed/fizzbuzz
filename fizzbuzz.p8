%import textio
%zeropage basicsafe

main {
  ubyte i
  bool p
  sub start() {
    for i in 1 to 100 {
      p = true
      if i % 3 == 0 {
        txt.print('Fizz')
        p = false
      }
      if i % 5 == 0 {
        txt.print('Buzz')
        p = false
      }
      if p {
        txt.print_ub(i)
      }
      txt.nl()
  }
}
