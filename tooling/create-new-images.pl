use REST::Client;
use JSON;
use Data::Dumper;


my $client = REST::Client->new();

# Target the quay.io API not authenticated
$client->GET('https://quay.io/api/v1/repository/openshift-release-dev/ocp-release/image/');
#print $client->responseContent();
#print $client->responseContent();
my $response = from_json($client->responseContent());
#print Dumper($response);
for my $images(@{$response->{images}}) {
    if ( scalar @{$images->{tags}} == 1 && $images->{tags}[0] =~ m/x86/ && ($images->{tags}[0] =~ m/4.3./ || $images->{tags}[0] =~ m/4.4./ || $images->{tags}[0] =~ m/4.5./) ) {
        print $images->{tags}[0] . "\n";
    }
}