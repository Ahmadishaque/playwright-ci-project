# Use the same base image as before
FROM mcr.microsoft.com/playwright/python:v1.40.0-jammy

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN playwright install chromium --with-deps

COPY . .

# Updated CMD: Removed --headless and used standard pytest flags
CMD ["pytest", "tests/test_site.py", "--browser", "chromium", "--html=report.html", "--self-contained-html", "--tracing", "retain-on-failure"]