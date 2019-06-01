# vi:et:sw=4 ts=4 ft=perl
#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use utf8;
use Data::Dumper;
use Tie::Hash::Rank;

tie my %fish, 'Tie::Hash::Rank';

%fish=(
    betta   => 20,
    guppy   => 20,
    gourami => 30,
    cichlid => 10,
);

say Dumper(\%fish);

1;

