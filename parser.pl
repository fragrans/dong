#!/usr/bin/perl -w
use strict;

while(<>) {
    if ($_ =~ "^.*<project.*") {
	$_ =~ s/.*name="([^ ]*)".*/$1/;
	print $_;
    }
}
