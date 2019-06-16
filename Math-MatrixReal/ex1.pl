# vi:et:sw=4 ts=4 ft=perl
#!/usr/bin/env perl

use strict;
use warnings;
use feature qw(say);
use utf8;
use Math::MatrixReal;

my ($a, $b, $c);
$a = Math::MatrixReal->new_random(2, 2);
$a->display_precision(0);

$b = Math::MatrixReal->new_random(2, 2);
$b->display_precision(0);

$c = $a * $b;
$c->display_precision(0);

foreach (qw(a b c)) {
    say $_;
    say eval "\${$_}";
}

__END__

$ perl ex1.pl
a
[  6           9          ]
[  5           3          ]

b
[  1           7          ]
[  8           0          ]

c
[  82          51         ]
[  36          39         ]

1;

