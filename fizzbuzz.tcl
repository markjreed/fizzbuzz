for {set i 1} {$i <= 100} {incr i} {
    set line {}
    if {$i % 3 == 0} {set line Fizz}
    if {$i % 5 == 0} {set line ${line}Buzz}
    if {$line eq {}} {set line $i}
    puts $line
}
