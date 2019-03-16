use strict;
use warnings;

use Furl;
use HTTP::AnyUA;
use HTTP::Tiny;
use LWP::UserAgent;
use Mojo::UserAgent;
use Net::Curl::Easy;

foreach my $ua (qw(Furl HTTP::Tiny LWP::UserAgent Mojo::UserAgent Net::Curl::Easy)) {
    my $any_ua = HTTP::AnyUA->new(ua => $ua->new, response_is_future => 1);
    print "Using: $ua\n";

    my $future = $any_ua->get('https://kianmeng.org');
    $future->on_done(sub {
        my $response = shift;
        print "$response->{status} $response->{reason}\n\n";
    });

    $future->on_fail(sub {
        my $response = shift;
        print STDERR "ERROR: $response->{status}\n\n"
    });
}
