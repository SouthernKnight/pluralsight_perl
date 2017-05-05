#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

use LWP::Simple;

sub main {
    print "Downloading ...\n";
    # print get("http://www.powerball.com/pb_home.asp");

    my $code = getstore("http://www.powerball.com/pb_home.asp", "home.html");

    if ($code == 200)
    {
        print "Success\n";
    }
    else
    {
        print "Failed\n";
    }
    print "Finished\n";
}

main();