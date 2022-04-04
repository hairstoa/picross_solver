#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

BEGIN {push @INC, 'lib'};
use IOHandler;

sub main {
  my $filename = $_[0];
  
  IOHandler::readFile($filename);

}

if ( @ARGV[0] ){
  main( @ARGV[0] );
}
else {
  die "Please specify a file name from the command line.\n";
}

exit();
