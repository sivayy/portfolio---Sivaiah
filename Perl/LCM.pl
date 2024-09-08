#!/usr/bin/perl
#
use strict;
use warnings;
use diagnostics;

use feature 'say';

if (@ARGV == 3) {
print "The given Numbers\n";
}else {
	die "Usage: $0 <number1> <number2> <number3>\n";
}
#my ($cou, $REM1, $REM2, $REM3, $NUM1, $NUM2, $NUM3)
my $NUM1=$ARGV[0];
my $NUM2=$ARGV[1];
my $NUM3=$ARGV[2];
my ($cou, $REM1, $REM2, $REM3);
for ($cou = 1; $cou >= 1; $cou++)
{
	$REM1=($cou % $NUM1);
	$REM2=($cou % $NUM2);
	$REM3=($cou % $NUM3);
	if (($REM1 == 0) && ($REM2 == 0) && ($REM3 == 0)) {
		say "Lowest Common Multipule of $NUM1, $NUM2, $NUM3 = $cou";
		last 
	}
}


