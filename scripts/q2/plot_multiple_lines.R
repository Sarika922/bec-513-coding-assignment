#!/usr/bin/env Rscript

library(ggplot2)
args <- commandArgs(trailingOnly = TRUE)
output_file <- args[1]
x_label <- args[2]
y_label <- args[3]
plot_title <- args[4]

data <- read.table(file("stdin"), header = FALSE, col.names = c("X", "Y", "Category"))

p <- ggplot(data, aes(x = X, y = Y, color = Category, group = Category)) +
  geom_line() +
  labs(title = plot_title, x = x_label, y = y_label, color = "Category") +
  theme_minimal()

ggsave(output_file, plot = p, width = 8, height = 6, dpi = 300)
