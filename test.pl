use REST::Google
    REST::Google->service('http://ajax.googleapis.com/ajax/services/search/web');
my $res = REST::Google->new(
    q => 'Larry Wall',
);
die "reponse status failure" if $res->responseStatus != 200;

    my $data = $res->responseData;
    use Data::Dumper;
    print Dumper( $data );
