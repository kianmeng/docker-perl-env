#!/usr/bin/env perl
# vi:et:sw=4 ts=4 ft=perl

use strict;
use warnings;
use utf8;
use feature qw(say);

use Data::Dumper;
use JSON::API;

my $ua = JSON::API->new('https://jsonplaceholder.typicode.com');
my $json = $ua->get('xxxtodos/1');
say Dumper $ua->was_success() ? $json : 'error';

1;

__DATA__
$ perl ex2.pl
error
