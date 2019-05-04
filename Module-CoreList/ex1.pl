use strict;
use warnings;
use feature qw|say|;

use Module::CoreList;

say $_ foreach sort @{[Module::CoreList->find_modules(qr/.*/i, 5.029006)]};
