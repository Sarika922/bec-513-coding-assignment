query_file: to_select.tsv. Contains patterns to match.
target_file: q1_data.tsv.gz. The file to filter based on the patterns.
column: Column number 2 in target_file to match the patterns.
The files are stored in /home/bec51319.iitr/workplace/bec-513-coding-questions/data
gzip.open was used to read the .gz files.
Each line of the target_file was read.
Print header lines or comments passed through the script unchanged.
Remaining lines were split by the delimiter (\t).
In each column, the value was checked for the matching pattern.
The matching lines were printed. 
The script was run to generate filtered results and stored in selected_lines.tsv.
Command to run the script: python filter_lines.py /home/bec51319.iitr/workplace/bec-513-coding-questions/data/to_select.tsv /home/bec51319.iitr/workplace/bec-513-coding-questions/data/q1_data.tsv.gz 2 > selected_lines.tsv
