#!/usr/bin/perl

@possible_numbers = qw/1 8 4 0 7 2/;
@all_numbers = (@possible_numbers,qw/9 5 6 3/);

foreach (@all_numbers) {
  print $_ . "\n";
}
