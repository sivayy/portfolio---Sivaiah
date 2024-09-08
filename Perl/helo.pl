#!/usr/bin/perl

use feature 'say';

say "This is a simple perl script";

say "What is your Name";
my $NAME=<>;
chomp($NAME);
print "Hi $NAME\n";
print "What is your age\n";
my $AGE=<STDIN>;
chomp($AGE);
print "You are $AGE years old\n";
