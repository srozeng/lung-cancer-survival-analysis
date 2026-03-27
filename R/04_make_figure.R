library(ggplot2)

diagnosed <- readRDS("output/clean_data.rds")

p <- ggplot(diagnosed, aes(x = Cancer_Stage, y = Survival_Years)) +
  geom_boxplot() +
  facet_grid(Early_Detection ~ Developed_or_Developing) +
  labs(
    title = "Survival Years by Cancer Stage",
    subtitle = "Stratified by Early Detection and Country Development Status",
    x = "Cancer Stage",
    y = "Survival Years"
  ) +
  theme_minimal(base_size = 14)

ggsave("output/figure1.png", plot = p, width = 10, height = 7)