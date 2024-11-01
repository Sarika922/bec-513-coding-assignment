# Q1: Selecting lines from stdin

Often, you would be interested in selecting lines from a file with patterns
exactly matching your interest. The pattern, however, can either be i) in a
column somewhere in the file, ii) combination of columns or something more. You
have to write a general code to select those lines. See the example below:

A query (to select lines) file may look like this (see `data/to_select.tsv`).

```
$ head -5 data/to_select.tsv
ENSG00000180353.10
ENSG00000180596.7
ENSG00000266379.6
ENSG00000262561.1
ENSG00000284999.1
```

And the big file from where you have to select may look like this (see `data/q1_data.tsv.gz`):

```
$ zcat data/q1_data.tsv.gz | head -5 
transcript_id(s)	gene_id	length	effective_length	expected_count	TPM	FPKM	posterior_mean_count	posterior_standard_deviation_of_count	pme_TPM	pme_FPKM	TPM_ci_lower_bound	TPM_ci_upper_bound	TPM_coefficient_of_quartile_variation	FPKM_ci_lower_bound	FPKM_ci_upper_bound	FPKM_coefficient_of_quartile_variation
10904	10904	93.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0	0
12954	12954	94.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0	0
12956	12956	72.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0	0
12958	12958	82.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0	0	0	0	0	0
```

# Q2: 
