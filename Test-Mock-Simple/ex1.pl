use strictures 2;
use Test::Mock::Simple;
use REST::Client;

my $client = REST::Client->new;
$client->GET('https://restcountries.eu/rest/v2/name/malaysia?fields=name;capital');
print $client->responseContent();

1;
