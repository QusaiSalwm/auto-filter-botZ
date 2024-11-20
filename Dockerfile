# Use the official Python 3.10 image
FROM python:3.10

# Set the working directory in the container
WORKDIR /TamilanBotsZ

# Copy requirements.txt to the container
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project to the container
COPY . .

# Command to run the bot
CMD ["python3", "bot.py"]
