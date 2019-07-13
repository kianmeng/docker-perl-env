#!/usr/bin/env perl
# vi:et:sw=4 ts=4 ft=perl

use strict;
use warnings;
use utf8;
use feature qw(say);

use Date::Tiny;

my $date1 = Date::Tiny->now();
my $date2 = Date::Tiny->now();
my $date3 = Date::Tiny->from_string('2099-01-01');

# use overload '""'   => 'as_string';
say $date1;
say $date2;

# use overload 'eq'   => sub { "$_[0]" eq "$_[1]" };
say $date1 eq $date2;

# use overload 'ne'   => sub { "$_[0]" ne "$_[1]" };
say $date1 ne $date3;

1;

