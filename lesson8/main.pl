#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$|=1;

sub main() {
    my $file = '../lesson5/mymanjeeves.txt';

    open(INPUT, $file) or die("Input file not found: $file\n");

    while (my $line = <INPUT>)
    {
        if ($line =~ /(I..a.)(...)/)
        {
            print "First match: '$1'; Second match: '$2'\n";
        }
    }

    close(INPUT);
}

main();