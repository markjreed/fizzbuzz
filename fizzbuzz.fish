#!/usr/bin/env fish
for i in (seq 100)
    set print_num true
    if test (math $i % 3) -eq 0 
        echo -n Fizz
        set print_num false
    end
    if test (math $i % 5) -eq 0 
        echo -n Buzz
        set print_num false
    end
    if $print_num 
        echo -n $i
    end
    echo
end
