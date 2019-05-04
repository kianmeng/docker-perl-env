use strict;
use warnings;
use feature 'say';

use Data::Money;

my $price = Data::Money->new(value => 1.2, code => 'MYR');
say $price->as_string;
say $price->stringify;
