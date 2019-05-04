use strict;
use warnings;
use feature 'say';

use Data::Money;

my $price1 = Data::Money->new(value => 12, code => 'MYR');
my $price2 = Data::Money->new(value => 12, code => 'USD');

say $price1 + $price2;
