# Load chickwts dataset
data("chickwts")

# Calculate the counts of each feed type
feed_counts <- table(chickwts$feed)

# Set font family to mono
par(family = "mono")

# Generate a boxplot
png("barplot_chickwts.png")  # Save the plot as a PNG file
barplot(feed_counts, main = "Barplot of Chickwts Feed Types", xlab = "Feed Type", ylab = "Count")
dev.off()  # Close the PNG device

