for {set i 1} {$i <= 100} {incr i} {
  set line [expr "$i % 3 == 0 ? {Fizz} : {}"]
  if {$i % 5 == 0} {
    set line [string cat $line Buzz]
  }
  if {[string equal $line {}]} {
    puts $i
  } else {
    puts $line
  }
}
