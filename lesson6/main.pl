#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

$| = 1;

sub readWriteFile() {
    my $inputfile = '../lesson5/mymanjeeves.txt';
    my $outputfile = 'mymanjeeves_extract.txt';

    open(INPUT, $inputfile) or die("Input file not found: $inputfile\n");
    open(OUTPUT, '>'.$outputfile) or die("Output file not created: $outputfile\n");

    while (my $line = <INPUT>)
    {
        if ($line =~ /\begg\b/)
        {
            $line =~ s/you/YOU/ig;
            print OUTPUT $line;
        }
    }

    close(INPUT);
    close(OUTPUT);
}


sub main()
{
    my $output = 'output.txt';

    open(OUTPUT, '>'.$output) or die("Can't create output file: $output\n");

    print OUTPUT "Hello\n";

    close(OUTPUT);

    readWriteFile();
}

main();