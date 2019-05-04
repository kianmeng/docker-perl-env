package Log;

use 5.010;
use warnings;
use strict;

use Carp;

# Declare class fields / methods.
use Class::Tiny qw (type), {
    created => sub { time },
    updated => sub { time },
};

# Override the parameters to constructor.
sub BUILDARGS {
   my $class = shift;
   my $type = shift || 'info';
   return { type => $type };
};

# Validate the parameters to constructor.
sub BUILD {
    my ($self, $args) = @_;
    croak 'invalid type' unless ($self->type =~ m/^(warn|debug|info)$/);
    return;
}

1;
# vi:et:sw=4 ts=4 ft=perl

