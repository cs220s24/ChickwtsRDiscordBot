# Load chickwts dataset
if(!require(tidyverse)) {
  install.packages("tidyverse")
}
library(tidyverse)

data("chickwts")

# Generate a boxplot
chickwts %>%  
    ggplot(aes(x = feed, y = weight)) +
    geom_boxplot() +
    labs(title = "Boxplot of Chicken Weights by Feed Type", x = "Feed Type", y = "Weight")
dev.off()  # Close the PNG device

