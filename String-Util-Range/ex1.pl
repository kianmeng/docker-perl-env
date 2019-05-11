#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use utf8;

use String::Util::Range qw(convert_sequence_to_range);

my $range = convert_sequence_to_range(
    array => ['a', 'b', 'c', 'd', 'x', 1, 2, 3, 4, 'x'],
    separator => '-',
    threshold => 4
);

say join ', ', @{$range};

sub foo {
    my @foo;
    \@foo;
}

1;
# vi:et:sw=4 ts=4 ft=perl

