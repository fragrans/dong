use REST::Google::Search;

        REST::Google::Search->http_referer('http://example.com');

        my $res = REST::Google::Search->new(
                q => 'Larry Wall',
        );

        die "response status failure" if $res->responseStatus != 200;

        my $data = $res->responseData;
	    use Data::Dumper;
	    print Dumper( $data );

        my $cursor = $data->cursor;
        my $pages = $cursor->pages;

        printf "current page index: %s\n", $cursor->currentPageIndex;
        printf "estimated result count: %s\n", $cursor->estimatedResultCount;

        my @results = $data->results;

        foreach my $r (@results) {
                printf "\n";
                printf "title: %s\n", $r->titleNoFormatting;
                printf "url: %s\n", $r->url;
		print "content ", $r-content;
        }
