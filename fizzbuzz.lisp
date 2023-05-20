(loop for i from 1 to 100 doing
  (let* ((fizz     (if (zerop (mod i 3)) "Fizz" ""))
         (buzz     (if (zerop (mod i 5)) "Buzz" ""))
         (fizzbuzz (concatenate 'string fizz buzz))
         (line     (if (zerop (length fizzbuzz)) i fizzbuzz)))
    (format t "~a~%" line)))
