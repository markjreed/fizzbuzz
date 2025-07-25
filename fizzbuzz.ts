let i: number;
for (i = 1; i <= 100; ++i) {
    let line = '';
    if (i % 3 == 0) {
        line += 'Fizz';
    }
    if (i % 5 == 0) {
        line += 'Buzz';
    }
    if (!line) {
        line = '' + i;
    }
    console.log(line);
}
