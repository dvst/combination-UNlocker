#!/usr/bin/perl

@possible_numbers = qw/1 8 4 0 7 2/;
# @all_numbers = (@possible_numbers,qw/9 5 6 3/);

@first = @second = @third = @fourth = @possible_numbers ;
%present = {};

foreach $a (@first) {
  $present{$a} = 1 ;

  foreach $b (@second) {
    if (!$present{$b}) {
      $present{$b} = 1 ;
      $solo_b{$b} = 1 ;

      foreach $c (@third) {
        if (!$present{$c}) {
          $present{$c} = 1 ;
          $solo_c{$c} = 1 ; # retiene variable

          foreach $d (@fourth) {
            if (!$present{$d}) {
              $present{$d} = 1 ;

              print $a . $b . $c . $d . "\n";

              $present{$d} = 0 ;

            }else{
              next;
            }
          } # fin d
          $present{$c} = 0 ; # libera la variable
        }else{
          next;
        }
      } # fin c
      $present{$b} = 0 ;
    }else{
      next;
    }
  } # fin b
  $present{$a} = 0 ;
}
