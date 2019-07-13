#!/usr/bin/env perl
# vi:et:sw=4 ts=4 ft=perl

use strict;
use warnings;
use utf8;
use feature qw(say);

use Time::Moment;

my $tm = Time::Moment
    ->from_string('2019-07-13T07:00:10.28Z')
    ->plus_hours(8)
    ->strftime('%Y-%m-%d %T');

say $tm;

1;

__END__
$ perl ex1.pl
2019-07-13 15:00:10
