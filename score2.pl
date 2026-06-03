#!/usr/bin/perl

print "학번 이름 총점 평균\n";

while (<>) {
	chomp;
	@field = split;

	if ($. == 1) {
		$subj = @field -2;
		next;
	}

	$total = 0;

	for ($i = 2; $i < @field; $i++) {
	    $total += $field[$i];
        }

	$avg = $total / $subj;

	print "$field[0] $field[1] $total $avg\n";
}

