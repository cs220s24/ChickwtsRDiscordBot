# Load chickwts dataset
data("chickwts")

# Generate a boxplot
png("boxplot_chickwts.png")  # Save the plot as a PNG file
boxplot(weight ~ feed, data = chickwts, main="Boxplot of Chicken Weights by Feed Type", xlab="Feed Type", ylab="Weight")
dev.off()  # Close the PNG device

