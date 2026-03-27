library(readr)

dir.create("output", showWarnings = FALSE)

lung_data <- read_csv("data/lung_cancer_data.csv")

saveRDS(lung_data, "output/raw_data.rds")
