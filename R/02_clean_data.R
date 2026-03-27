library(dplyr)

lung_data <- readRDS("output/raw_data.rds")

diagnosed <- lung_data %>%
  filter(Lung_Cancer_Diagnosis == "Yes") %>%
  mutate(
    Early_Detection = as.factor(Early_Detection),
    Healthcare_Access = as.factor(Healthcare_Access),
    Cancer_Stage = as.factor(Cancer_Stage),
    Developed_or_Developing = as.factor(Developed_or_Developing)
  )

saveRDS(diagnosed, "output/clean_data.rds")
