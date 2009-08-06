#!/usr/bin/perl -w
use strict;
my $file;
my @files;

opendir(DIR, ".");
@files = readdir(DIR);
closedir(DIR);
foreach $file (@files) {
    if ($file == '.') continue;
    if ($file == '..') continue;
    print "\t\$(LOCAL_PATH)/dsp/$file:system/lib/dsp/$file \\\n";
}

