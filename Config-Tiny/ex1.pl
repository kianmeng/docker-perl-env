#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use utf8;

use Carp;
use Config::Tiny;

my $config = Config::Tiny->new;
my $settings = $config->read('missing_file.conf', 'utf8');
croak $config->errstr() if (!$settings);

1;

__END__
$ perl ex1.pl
Failed to open file 'missing_file.conf' for reading: No such file or directory at ex2.pl line 14.

# vi:et:sw=4 ts=4 ft=perl
