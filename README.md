# OpenClaw Security Lab 🛡️

This project demonstrates the deployment of a containerized AI agent with a focus on **Identity and Access Management (IAM)** and **System Hardening**.

## Security Features Implemented:
* **Principle of Least Privilege**: The agent runs as a restricted `sec-user` (UID 1005) rather than root.
* **Container Isolation**: Deployed using Docker to sandbox the application from the host environment.
* **Permission Verification**: Successfully passed a manual security audit by blocking access to sensitive system files like `/etc/shadow`.

## Technical Troubleshooting:
* Resolved **UID 1000 conflicts** by manually re-assigning a unique user ID.
* Optimized Dockerfile build order to ensure root-level installations occur before switching to the restricted user.

---
*Created as part of technical training in Cybersecurity.*
