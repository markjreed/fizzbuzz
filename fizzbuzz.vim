for i in range(1,100)
   let show = 1
   if i % 3 == 0
      echon "Fizz"
      let show = 0
   endif
   if i % 5 == 0
      echon "Buzz"
      let show = 0
   endif
   if show
      echon i
   endif
   echo ""
endfor
