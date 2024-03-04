# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
# This step is optional and depends on your specific use case
# RUN pip install --no-cache-dir -r requirements.txt

# Clone fimap
RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/kurobeats/fimap.git && \
    cd fimap/src && \
    chmod +x fimap.py


#INSTALL fimap dependencies
RUN pip install httplib2==0.10.3

# Run fimap.py when the container launches
CMD ["python", "./fimap/src/fimap.py"]
