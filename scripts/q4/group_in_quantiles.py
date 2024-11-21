import sys
import pandas as pd

if len(sys.argv) != 2:
    print("Usage: cat /home/bec51319.iitr/workplace/bec-513-coding-questions/data/first_hundred_numbers.tsv | python group_in_quantiles.py 4")
    sys.exit(1)

num_quantiles = int(sys.argv[1])

data = [int(line.strip()) for line in sys.stdin]

quantile_intervals = pd.qcut(data, num_quantiles, retbins=True, labels=False)
quantile_bins = quantile_intervals[1]
quantile_labels = [f"q{i+1}" for i in range(num_quantiles)]

quantiles = pd.qcut(data, num_quantiles, labels=quantile_labels)

for value, quantile, interval_index in zip(data, quantiles, quantile_intervals[0]):
    interval = f"({quantile_bins[interval_index]}, {quantile_bins[interval_index + 1]}]"
    print(f"{value}\t{quantile}\t{quantile} {interval}")
