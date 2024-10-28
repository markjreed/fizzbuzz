#!/usr/bin/env osascript
set theResult to ""
repeat with i from 1 to 100
    set theLine to ""
    if i mod 3 is 0 then set theLine to "Fizz"
    if i mod 5 is 0 then set theLine to theLine & "Buzz"
    if theLine is "" then set theLine to i
    if theResult is not "" then set theResult to theResult & linefeed
    set theResult to theResult & theLine
end repeat
theResult
