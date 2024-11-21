The output format was set to Postscript to handle large data efficiently.
The generated heatmap was saved as an EPS file, big_matrix.eps.
A custom color palette was used to represent data values visually.
Input data was extracted, sorted, and duplicates were removed before plotting. This was done using zcat, awk, sort, and uniq.
The processed data was visualized as a heatmap using Gnuplot.
The EPS file is converted to a PDF for easier sharing and viewing.
Code: zcat /home/bec51319.iitr/workplace/bec-513-coding-questions/data/big_data.tsv.gz | gnuplot /home/bec51319.iitr/workplace/bec-513-coding-questions/scripts/q5/plot_heatmap.gp
Conversion of eps to pdf: ps2pdf big_matrix.eps big_matrix.pdf
