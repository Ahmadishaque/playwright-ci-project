# playwright-ci-project
# 🚀 Ephemeral Playwright CI Pipeline

## Modern UI Testing with Docker & GitHub Actions

---

## 📌 Project Overview

This project demonstrates a production-ready Continuous Testing pipeline using **Playwright (Python)**, **Docker**, and **GitHub Actions**.

Instead of running tests locally, the test suite executes automatically inside a Dockerized environment whenever code is pushed to GitHub. This ensures consistent execution environments, eliminates the classic *"it works on my machine"* issue, and provides immediate feedback through automated test reporting.

---

## 🛠️ Tech Stack

- **Language:** Python  
- **Testing Framework:** Playwright, Pytest  
- **Containerization:** Docker  
- **CI/CD:** GitHub Actions  
- **Reporting:** Pytest-HTML  

---

## ✨ Key Features

### 🐳 Containerized Test Execution
All tests run inside the official Playwright Docker image, ensuring consistency across development and CI environments.

### ⚙️ Automated CI Workflow
GitHub Actions automatically builds the Docker image and executes the Playwright test suite on every push.

### 📊 HTML Test Reporting
Generates a Pytest HTML report and uploads it as a GitHub Actions artifact for easy review.

### ⚡ Headless Browser Testing
Uses Chromium in headless mode for fast and efficient execution in CI pipelines.

### 🔁 Production-Style Automation
Implements reproducible builds and isolated execution workflows commonly used in real-world engineering teams.

---

## 📂 CI Workflow

```text
Developer Push
      ↓
GitHub Actions Triggered
      ↓
Docker Container Builds
      ↓
Playwright Tests Execute
      ↓
HTML Report Generated
      ↓
Artifact Uploaded
```

---

## 🚦 Pipeline Highlights

- Automated test execution on every push
- Docker-based reproducible environments
- Fast headless browser testing
- GitHub artifact reporting
- Scalable CI workflow structure

---

## 🧪 Running Locally

### Build Docker Image

```bash
docker build -t playwright-tests .
```

### Run Test Suite

```bash
docker run playwright-tests
```

---

## 📑 Generated Reports

The CI pipeline automatically uploads:

- ✅ Pytest HTML Report
- ✅ Execution Logs
- ✅ Workflow Artifacts

These can be downloaded directly from the **GitHub Actions** workflow page.

---

## 📌 Future Enhancements

- Parallel test execution
- Multi-browser support
- Allure reporting integration
- Slack/Discord notifications
- Kubernetes-based test runners

---

## 📄 License

This project is licensed under the MIT License.
