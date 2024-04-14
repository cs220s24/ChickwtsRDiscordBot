# Load chickwts dataset
data("chickwts")

# Calculate the counts of each feed type
feed_counts <- table(chickwts$feed)

# Generate a boxplot
png("barplot_chickwts.png")  # Save the plot as a PNG file
barplot(feed_counts, data = chickwts, main="Barplot of Chickens Feed Type", xlab="Feed Type", ylab="Count")
dev.off()  # Close the PNG device

