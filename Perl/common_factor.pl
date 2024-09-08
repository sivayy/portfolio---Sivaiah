#!/usr/bin/perl
#

use strict;
use warnings;
use diagnostics;

use feature 'say';

say "Enter first Num:";
my $num1=<>;
chomp($num1);
say " Enter second Num: ";
my $num2=<>;
chomp($num2);
say "$num1, $num2";
my($MAX, $REM1, $REM2, $count, @Cfact);
if ($num1 > $num2) {
	$MAX=$num2;
}else {
	$MAX=$num1;
}
for ($count = 1 ; $count <= $MAX ; $count++)
#for ($i=1; $i <= $MAX; $i++);
{
	$REM1=($num1 % $count);
	$REM2=($num2 % $count);
	if (( $REM1 == 0 ) && ( $REM2 == 0 )) { 
			say "Common factor = $count";
			push(@Cfact, "$count");

	}
}
my $Acou=$#Cfact;
say "Least common factor for \"$num1\" & \"$num2\" = $Cfact[0]";
say "Highest common factor for \"$num1\" & \"$num2\" = $Cfact[$Acou]";

