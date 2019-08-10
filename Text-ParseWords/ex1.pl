#!/usr/bin/env perl
# vi:et:sw=4 ts=4 ft=perl

use strict;
use warnings;
use utf8;
use feature qw(say);
use Data::Dumper;
use Text::ParseWords qw(quotewords);

my $str = q|a, "b, c", d, "e, f"|;

say 'Using split';
say Dumper split /,/, $str;

say 'Using quotewords - remove double quotes';
say Dumper quotewords(',', 0, $str);

say 'Using quotewords - retain double quotes';
say Dumper quotewords(',', 1, $str);

1;

__END__
$perl ex1.pl

Using split
$VAR1 = 'a';
$VAR2 = ' "b';
$VAR3 = ' c"';
$VAR4 = ' d';
$VAR5 = ' "e';
$VAR6 = ' f"';

Using quotewords - remove double quotes
$VAR1 = 'a';
$VAR2 = ' b, c';
$VAR3 = ' d';
$VAR4 = ' e, f';

Using quotewords - retain double quotes
$VAR1 = 'a';
$VAR2 = ' "b, c"';
$VAR3 = ' d';
$VAR4 = ' "e, f"';
