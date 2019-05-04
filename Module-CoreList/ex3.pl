use strict;
use warnings;
use feature qw|say|;

use Module::CoreList;

sub a { say @_; }
sub b { &a; }
sub c { &a(); }
sub d { a(@_); }
sub e { &a(@_); }

b 1, 2, 3;
c 1, 2, 3;
d 1, 2, 3;
e 1, 2, 3;

END {
    say "last statement here";
}
