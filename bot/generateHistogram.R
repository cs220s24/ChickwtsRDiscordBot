# Load chickwts dataset
data("chickwts")

# Generate histogram
png("histogram_chickwts.png") # Save the plot as a PNG file
hist(chickwts$weight, main="Histogram of Chicken Weights", xlab="Weight", breaks=20)
dev.off() # Close PNG

