#!/usr/bin/perl

print "학번 이름 총점 평균\n";

while (<>) {
	chomp;
	@field = split;

	if ($. == 1) {
		$subj = @field -2;

		for ($i = 2; $i < @field; $i++){
			$subject[$i] = $field[$i];
		}	

		next;
	}

	$total = 0;

	for ($i = 2; $i < @field; $i++) {
	    $total += $field[$i];
	    $sum[$i] += $field[$i];
        }

	$cnt++;
	$avg = $total / $subj;

	print "$field[0] $field[1] $total $avg\n";
}

print "\n과목평균\n";

for ($i = 2; $i < $subj + 2; $i++) {
	$avg_subj = $sum[$i] / $cnt;
	print "$subject[$i] $avg_subj\n";
}
