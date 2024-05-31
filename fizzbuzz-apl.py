#!/usr/bin/env python
# FizzBuzz in Python, but using the same approach as this APL solution:
# {⎕←∊'Fizz' 'Buzz' ⍵/⍨d,⍱/d←0=3 5|⍵}¨⍳100

[
    print(
        "".join(
            [
                ["Fizz", "Buzz", str(w)][i] if f else ""
                for a, b in [[0 == w % n for n in [3, 5]]]
                for i, f in enumerate([a, b, not (a or b)])
            ]
        )
    )
    for w in range(1, 101)
]
