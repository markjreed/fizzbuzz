#!/usr/bin/env raku
for 1..100 {
  my $line = $_ %% 3 ?? 'Fizz' !! '';
  $line ~= 'Buzz' if $_ %% 5;
  say $line || $_;
}
