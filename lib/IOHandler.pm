#!/usr/bin/perl

package IOHandler;
use strict;
use warnings;

use Data::Dumper;

sub readFile {
  my $fname = $_[0];
  my $isSolution = 0;
  open(FH, '<', $fname) or die $!;
  if ($fname =~ /solution.txt$/) {
    $isSolution = 1;
  }
  
  my @table = ();
   while(<FH>) {
     my $line = $_;
     # Convert line as as string to 2D array-
     # Split by commas if not isSolution
       
     # Split by blank spaces regardless
     my @row  = split(' ', $line);
     push(@table, \@row);
     
  }

  warn Dumper @table;
  #     my $ascii_value = ord($char) - 48;
  #     if ($ascii_value >= 0 && $ascii_value <= $GRID_SIZE) {
  #      push(@num_line, $ascii_value);
  #    }
  #   }
  #   # Append line to array
  #   push (@board, \@num_line);
  # }
  # close (FH);
  # return @board;
}

sub printBoard {
   my @board = @{ $_[0]};
   my $counter_x = 1;
   for my $row (@board) {
     my $counter_y = 1;
     for my $column (@{$row}){
       print $column . " ";
       if ($counter_y == 3 || $counter_y == 6) {
         print "| ";
       }
       $counter_y++;
      }
     print "\n";
     if ($counter_x == 3 || $counter_x == 6) {
       print "- - - - - - - - - - -\n";
     }
     $counter_x++;
   }
 }


1;
