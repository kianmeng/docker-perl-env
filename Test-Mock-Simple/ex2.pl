use strictures 2;
use REST::Client;
use Test::Mock::Simple;

my $mock = Test::Mock::Simple->new(module => 'REST::Client');
$mock->add(responseContent => sub { return <DATA>; });

my $client = REST::Client->new;
# $client->GET('https://restcountries.eu/rest/v2/name/malaysia?fields=name;capital');
print $client->responseContent();

1;

__DATA__
[{"name":"Malaysia","capital":"Kuala Lumpur"}]

