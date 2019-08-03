#!/usr/bin/env perl
# vi:et:sw=4 ts=4 ft=perl

use strict;
use warnings;
use utf8;
use feature qw(say);

use Getopt::Long::More qw(HelpMessage optspec GetOptions);

my %opts;
GetOptions(
    'foo=s' => optspec(
        handler => \$opts{foo},
        required => 1,
        summary => 'Foo is the bar'
    ),
    'bar' => optspec(
        handler => \$opts{bar},
        default => 0,
        summary => 'Bar is the foo'
    ),
    'help' => optspec(
        handler => sub { HelpMessage() },
        summary => 'Print this help'
    ),
);

1;

__END__
$ perl ex1.pl --help
Usage: ex1.pl [options]
Options (* marks required option):
  --foo=s*  Foo is the bar
  --bar     Bar is the foo (default: 0)
  --help    Print this help
