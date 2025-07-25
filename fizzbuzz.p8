%import syslib
%import textio

main {
    sub start() {
        ubyte i
        bool print_num

        for i in 1 to 100 {
            print_num = true
            if i % 3 == 0 {
                txt.print("Fizz")
                print_num = false
            }
            if i % 5 == 0 {
                txt.print("Buzz")
                print_num = false
            }
            if print_num {
                txt.print_ub(i)
            }
            txt.nl()
        }
    }
}
