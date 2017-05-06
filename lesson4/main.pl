#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

# Turn off output buffering
$|=1;

sub main() {

    my @files = ('../lesson3/home.html', '../lesson3/main.pl', '../lesson3/home2.html');

    foreach my $file (@files)
    {
        if (-f $file)
        {
            print("Found file: $file\n");
        }
        else
        {
            print("File NOT found: $file\n");
        }
    }
}

main();