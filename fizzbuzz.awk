BEGIN {
  for (i=1; i<=100; ++i) {
    p=1
    if (i%3==0) { printf("%s","Fizz"); p=0 }
    if (i%5==0) { printf("%s","Buzz"); p=0 }
    if (p) { printf("%d", i) }
    printf("\n")
  }
}
