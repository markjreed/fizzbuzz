%import syslib
%import textio
%zeropage basicsafe
%option no_sysinit

main {
  const ubyte col_width = 10
  ubyte key
  bool row_major
  ubyte screen_width
  ubyte rows
  ubyte columns
  ubyte i
  ubyte j
  ubyte n
  bool  p

  sub start() {
    ; void cx16.screen_mode(3, false)
    txt.lowercase()
    txt.print("Major axis ([c]olumn/[r]ow)? ")
    while key != 'c' and key != 'r' and key != '\r' {
      key = cbm.GETIN()
    }
    row_major = key == 'r'
    if row_major {
        txt.print("row")
    } else {
        txt.print("column")
    }
    txt.nl()
    txt.nl()
    screen_width = txt.width()
    columns = screen_width / col_width
    if screen_width % col_width {
      columns += 1
    }
    rows = 100 / columns
    if rows * columns < 100 {
      rows += 1
    }
    for i in 0 to rows - 1 {
      for j in 0 to columns - 1 {
        txt.column(col_width * j)
        if row_major {
           n = i * columns + j
        } else {
           n = j * rows + i
        }
        n += 1
        if n <= 100 {
          p = true
          if n % 3 == 0 {
            txt.print("Fizz")
            p = false
          }
          if n % 5 == 0 {
            txt.print("Buzz")
            p = false
          }
          if p {
            txt.print_ub(n)
          }
        }
      }
      txt.nl()
    }
  }
}
