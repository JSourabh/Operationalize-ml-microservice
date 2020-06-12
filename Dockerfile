FROM python:3.7.3-stretch

## Complete Step 1:
# Create a Working Directory
WORKDIR /app

## Complete Step 2:
# Copy source code to working directory
COPY . app.py/app


## Complete Step 3:
# Install packages from requirements.txt
#hadolint ignore=DL3013
RUN pip3 freeze > requirements.txt
RUN pip3 install --upgrade pip &&\
	pip3 install -r requirements.txt


## Complete Step 4:
Expose 80

## Complete Step 5:
# Run app.py at container launch
CMD [ "python", "./my_script.py" ]