use strict;
use warnings;
use feature qw(say);

use Data::Dumper;
use Hash::Objectify;

my $money = objectify { currency => 'myr', amount => 100 }, 'Money';

# accessor
say $money->currency;
say $money->amount;

# output
# myr
# 100

# mutator
$money->amount(1000);
say $money->amount;

# output
# 1000

# throw error on undefined method
say $money->country_code;

# output
# Can't locate object method "country_code" via package "Money" ......
