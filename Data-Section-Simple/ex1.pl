#!/usr/bin/env perl
# vi:et:sw=4 ts=4 ft=perl
package FooBar;

use strict;
use warnings;
use utf8;
use feature qw(say);
use Data::Dumper;

sub new {
    my ($class, $pkg) = @_;
    bless { package => $pkg || caller }, $class;
}

my $fb = FooBar->new;
say Dumper $fb;

1;

