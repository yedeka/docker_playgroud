# Specify a base image to be used
FROM python:3.8

# Set the work directory to run the app
WORKDIR /usr/src/app

# Copy all application files to the image
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port to run the app on
EXPOSE 5000

# Specify the app startup command
CMD ["python", "./app.py"]
