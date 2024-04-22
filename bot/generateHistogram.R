# Load chickwts dataset
#install package if not already installed
if(!require(tidyverse)) {
  install.packages("tidyverse")
}
library(tidyverse)
data("chickwts")

# Generate histogram
Histogram = chickwts %>%
  ggplot(aes(x = weight)) +
  geom_histogram() +
  labs(title = "Histogram of Chicken Weights", x = "Weight", y = "Count")
# save the plot
ggsave("histogram_chickwts.png", plot = Histogram, device = "png")
