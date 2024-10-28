for i in {1..100}; do
    line=
    if (( i % 3 == 0 )) line=Fizz
    if (( i % 5 == 0 )) line+=Buzz
    print ${line:-$i}
done
