import sys
import gzip

def filter_lines(query_file, target_file, column, delimiter="\t"):
    with open(query_file, 'r') as qf:
        patterns = set(line.strip() for line in qf if line.strip())
    
    open_func = gzip.open if target_file.endswith(".gz") else open
    with open_func(target_file, 'rt') as tf:
        for line in tf:
            if line.startswith("#") or line.startswith("transcript_id"):
                print(line.strip())
                continue
            
            fields = line.strip().split(delimiter)
            if fields[column - 1] in patterns:
                print(line.strip())

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("Usage: python filter_lines.py <query_file> <target_file> <column_number>")
        sys.exit(1)
    
    query_file = sys.argv[1]
    target_file = sys.argv[2]
    column_number = int(sys.argv[3])
    
    filter_lines(query_file, target_file, column_number)
