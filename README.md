# API Gateway Core Service

Aegis demo microservice that issues auth tokens and proxies requests to a legacy identity provider.
This repository is intentionally minimal and designed to demonstrate security regression detection
in an SRE workflow.

## Overview

- Service name: api-gateway
- Primary endpoint: POST /auth/token
- Purpose: bridge modern clients to a legacy SSO provider

## Quickstart

```bash
pip install -r requirements.txt
python main.py
```

## Example Request

```bash
curl -X POST http://localhost:8080/auth/token \
  -H "Content-Type: application/json" \
  -d '{"username":"demo","password":"demo","redirect_url":"https://legacy-idp.example.com/validate"}'
```
