# 1. Use the official Microsoft Playwright image
FROM mcr.microsoft.com/playwright/python:v1.40.0-jammy

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements and install them
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Copy your project files into the container
COPY . .

# 5. Run the tests when the container starts
# We use --html to generate a report file
CMD ["pytest", "--browser", "chromium", "--headless", "--html=report.html", "--self-contained-html"]