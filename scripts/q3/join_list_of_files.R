first_file <- read.table("/home/bec51319.iitr/workplace/bec-513-coding-questions/data/q3_first.tsv", header = FALSE, sep = "\t", stringsAsFactors = FALSE)
second_file <- read.table("/home/bec51319.iitr/workplace/bec-513-coding-questions/data/q3_second.tsv", header = FALSE, sep = "\t", stringsAsFactors = FALSE)

colnames(first_file) <- c("ID", "TCGA_ID", "Tissue_Type")
colnames(second_file) <- c("ID", "Value")

merged_data <- merge(first_file, second_file, by = "ID", all.x = TRUE)

head(merged_data)

write.table(merged_data, "/home/bec51319.iitr/workplace/bec-513-coding-questions/scripts/q3/join_output.tsv", sep = "\t", row.names = FALSE, quote = FALSE)
