#!/usr/bin/env python
for i in range(1, 101):
    s = '' if i%3 else 'Fizz'
    if i % 5 == 0:
        s += 'Buzz'
    if s:
        print(s)
    else:
        print(i)
