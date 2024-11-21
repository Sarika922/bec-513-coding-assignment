set terminal postscript size 6,6 font 'Arial, 15'
set output "/home/bec51319.iitr/workplace/bec-513-coding-questions/scripts/q5/big_matrix.eps"

set xrange [0:2000]
set yrange [0:100]
set palette defined (0 "white", 1 "yellow", 2 "orange", 3 "red")
set cbrange [0:3]

plot '<zcat /home/bec51319.iitr/workplace/bec-513-coding-questions/data/big_data.tsv.gz | awk ''{print $2, $3, $4}'' | sort -k1,1 -k2,2 | uniq' matrix with image
