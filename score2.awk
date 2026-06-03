BEGIN {
	print "학번 이름 총전 평균"
}

NR == 1 {
    subj = NF - 2
    next
}

{
	total = 0

	for(i=3; i<=NF; i++)
	    total += $i

	avg = total / subj

	print $1, $2, total, avg
}	
