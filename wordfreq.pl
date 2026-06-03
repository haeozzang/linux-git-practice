#!/usr/bin/perl

while (<>) {
	chomp;
	$count{$_}++;
}

foreach $word (keys %count) {
	print "$word => $count{$word}\n";
}
