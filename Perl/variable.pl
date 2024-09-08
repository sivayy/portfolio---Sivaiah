#!/usr/bin/perl
#
use strict;
use warnings;
use diagnostics;

use feature 'say';

say "Hello, Please enter your name: ";
my $NAME=<>;
chomp($NAME);
say "Please select gender: (Male/Female/Other)";
my $Gen=<>;
chomp($Gen);
my($Title);
if ( $Gen eq "Male" ) {
	$Title="Mr.";
}elsif ( $Gen eq "Female" ) {
	$Title="Ms.";
}elsif ( $Gen eq "Other" ) {
	$Title="Mx.";
}else {
	say "Invalid Input";
	exit;
}

say "Hi ${Title}${NAME}";
my $COM=<<"EOF";
This is small server
Please provide details
we will not story your information
EOF
say "$COM";
say "What is your AGE: ";
my $AGE=<>;
chomp($AGE);
say "What is your Salary: ";
my $SAL=<>;
chomp($SAL);
say "Marital Status: (Married/Single)";
my $MAR=<>;
chomp($MAR);

if ($MAR eq "Married" ) {
	if (($AGE > 29 ) && ($SAL > 50000)) {
		say "You are good to have childrens";
	}elsif (($AGE < 32 ) && ($SAL < 50000)) {
		say "Don't plan for children, try to increase your Salary";
	}elsif (($AGE > 32 ) && ($SAL < 50000)) {
		say "Your in red Zone, Plan for children and try to increase your salary";
	}else { say "You are leading normal Life"; }
}else {
	if (($AGE > 29 ) && ($SAL > 50000)) {
		say "You are good for Marriage";
	}elsif (($AGE < 32 ) && ($SAL < 50000)) {
		say "You are not eligibule for Marriage";
	}elsif (($AGE > 32 ) && ($SAL < 50000)) {
		say "Even you are not eligible for Marriage, If you are intrested in Family\nPlan for Marriage";
	}else { say "You are too young for marriage, Explore all things. \nAfter Marriage you wont get time and money"; }
}
