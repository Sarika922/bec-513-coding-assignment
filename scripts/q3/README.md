Input Files:
/home/bec51319.iitr/workplace/bec-513-coding-questions/data/q3_first.tsv and /home/bec51319.iitr/workplace/bec-513-coding-questions/data/q3_second.tsv were read using read.table().
The first file contains columns for ID, TCGA_ID, and Tissue_Type.
The second file contains columns for ID and Value.
Merging:
The merge() function was used to join the two data frames based on the ID column.
Output:
The merged data was written to join_output.tsv.
Code: Rscript /home/bec51319.iitr/workplace/bec-513-coding-questions/scripts/q3/join_list_of_files.R /home/bec51319.iitr/workplace/bec-513-coding-questions/data/list_q3.tsv > /home/bec51319.iitr/workplace/bec-513-coding-questions/scripts/q3/join_output.tsv
