library(dplyr)

diagnosed <- readRDS("output/clean_data.rds")

summary_table <- diagnosed %>%
  group_by(Early_Detection) %>%
  summarise(
    N = n(),
    Mean_Age = mean(Age, na.rm = TRUE),
    Mean_Survival_Years = mean(Survival_Years, na.rm = TRUE),
    Percent_Stage_III_IV = mean(Cancer_Stage %in% c("Stage III", "Stage IV"), na.rm = TRUE) * 100
  )

saveRDS(summary_table, "output/table1.rds")