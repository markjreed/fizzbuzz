#!/usr/bin/env perl
use v5.12;
for (1..100) {
  my $line = $_ % 3 ? '' : 'Fizz';
  $line .= 'Buzz' unless $_ % 5;
  say $line || $_;
}
