#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use utf8;
use Test::LWP::UserAgent;

use strict;
use warnings;
use feature 'say';

use Test::LWP::UserAgent;

my $ua = Test::LWP::UserAgent->new;
$ua->map_response(qr/google.com/,
    HTTP::Response->new('404', undef, undef, <DATA>)
);

my $response = $ua->get('http://google.com');
say $response->code;
say $response->decoded_content;


1;

__DATA__
{"foo": "bar"}

__END__
$ perl ex1.pl
404
{"foo": "bar"}

# vi:et:sw=4 ts=4 ft=perl

