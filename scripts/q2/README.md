Data was piped into the R script from standard input.
The files are stored in /home/bec51319.iitr/workplace/bec-513-coding-questions/data
ggplot2 was used for plotting.
commandArgs(trailingOnly = TRUE) was used to read command-line arguments.
Output filename: Name of the output image file (e.g., "different_clusters.png").
X-axis label: Label for the X-axis (e.g., "Relative from center [bp]").
Y-axis label: Label for the Y-axis (e.g., "Enrichment over Mean").
Plot title: Title of the plot (e.g., "MNase fragment profile").
With columns X, Y, and Category, standard input (stdin) was read into a data frame.
ggplot() with geom_line() was used to create a line plot.
Labels for axes, plot title, and a legend for categories were added.
Plot was saved by running the following command:
cat /home/bec51319.iitr/workplace/bec-513-coding-questions/data/q2_data.tsv | Rscript plot_multiple_lines.R "different_clusters.png" "Relative from center [bp]" "Enrichment over Mean" "MNase fragment profile"
