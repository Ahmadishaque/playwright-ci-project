FROM mcr.microsoft.com/playwright/python:v1.40.0-jammy

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
# Ensure playwright browsers are installed inside the container
RUN playwright install chromium --with-deps

COPY . .

# Use 'python -m pytest' to ensure the path is correctly picked up
CMD ["python", "-m", "pytest", "tests/test_site.py", "--browser", "chromium", "--headless", "--html=report.html", "--self-contained-html"]