#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use utf8;

use Config::Tiny;
use Data::Dumper;

my $config = Config::Tiny->new;
my $settings = $config->read('ex1.conf', 'utf8');

# 1 Different ways to obtain root properties (not under any section).
say '#1';
say Dumper($settings->{_});
say Dumper($settings->{_}->{name});
say Dumper($settings->{_}{name});

# Obtain all properties in a section.
say '#2';
say Dumper($settings->{client});

# Obtain a particular property in a section.
say '#3';
say Dumper($settings->{server}->{max_memory});
say Dumper($settings->{server}{max_memory});

1;

__END__
$ perl ex2.pl
#1
$VAR1 = {
          'name' => 'daemon'
        };

$VAR1 = 'daemon';

$VAR1 = 'daemon';

#2
$VAR1 = {
          'verbose' => '1'
        };

#3
$VAR1 = '10M';

$VAR1 = '10M';


# vi:et:sw=4 ts=4 ft=perl
