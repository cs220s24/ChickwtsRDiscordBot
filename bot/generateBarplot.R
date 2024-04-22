# Load chickwts dataset
if(!require(tidyverse)) {
  install.packages("tidyverse")
}
library(tidyverse)

data("chickwts")

# Calculate the counts of each feed type

# Generate a boxplot
weights = chickwts %>%
  ggplot(aes(x = feed)) +
  geom_bar() +
  labs(title = "Barplot of Chickens Feed Type", x = "Feed Type", y = "Count")
ggsave("barplot_chickwts.png", plot = weights, device = "png")

dev.off()  # Close the PNG device
