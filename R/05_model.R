diagnosed <- readRDS("output/clean_data.rds")

model <- lm(
  Survival_Years ~ Early_Detection +
    Healthcare_Access +
    Cancer_Stage +
    Developed_or_Developing +
    Early_Detection:Cancer_Stage +
    Early_Detection:Developed_or_Developing,
  data = diagnosed
)

saveRDS(model, "output/model.rds")