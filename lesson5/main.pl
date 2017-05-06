#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$|=1;

sub main() {
    my $file = 'mymanjeeves.txt';

    open(INPUT, $file) or die("Input file not found: $file\n");

    while (my $line = <INPUT>)
    {
        if ($line =~ /egg/)
        {
            print $line;
        }
    }

    close(INPUT);
}

main();