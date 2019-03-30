use strict;
use warnings;

use Data::Dumper;
use Hash::Objectify;

# Using default class.
my $money_a = objectify { currency => 'myr', amount => 100 };
print Dumper($money_a);

# Using defined class.
my $money_b = objectify { currency => 'myr', amount => 100 }, 'Money';
print Dumper($money_b);
