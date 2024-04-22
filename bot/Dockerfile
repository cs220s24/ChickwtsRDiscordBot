# Use an official Python runtime as a parent image
FROM python:3.8-alpine

# Install R and dependencies
RUN apk add --no-cache R R-dev

# Verify R install
RUN R --version

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .
COPY generateBarplot.R .
COPY generateHistogram.R .
COPY generateBoxplot.R .

# Install any needed packages specified in requirements.txt
RUN python3 -m venv .venv
RUN .venv/bin/pip install -r requirements.txt


COPY bot.py .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run bot.py when the container launches
CMD [".venv/bin/python", "bot.py"]

