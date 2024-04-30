# Load chickwts dataset
data("chickwts")

# Calculate the counts of each feed type

# Set font family to mono
par(family = "mono")

# Generate a boxplot
png("barplot_chickwts.png")  # Save the plot as a PNG file
barplot(feed_counts, main = "Barplot of Chickwts Feed Types", xlab = "Feed Type", ylab = "Count", 
cex.names = 0.7, cex.axis = 0.7)
dev.off()  # Close the PNG device
