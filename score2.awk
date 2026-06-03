BEGIN {
	print "학번 이름 총전 평균"
}

NR == 1 {
    subj = NF - 2

    for(i = 3; i <= NF; i++)
	    subject[i] = $i

    next
}

{
	total = 0

	for(i=3; i <= NF; i++) {
	    total += $i
	    sum[i] += $i
        }
        
	cnt++
	avg = total / subj

	print $1, $2, total, avg
}

END {
	print ""
	print "과목평균"

	for(i =3; i <= subj + 2; i++)
		print subject[i], sum[i] / cnt
}
