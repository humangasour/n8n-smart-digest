# n8n Smart Digest (Privacy-First)

Daily Slack digest powered by [n8n](https://n8n.io).  
This demo project generates a private daily summary of updates from allow-listed Slack channels and a Gmail label (`Digest`), redacts sensitive data, and delivers the result as a Slack DM.

## Why this project?

This was built as a portfolio project for Apply Digital’s **AI Foundations** program.  
It shows how AI + automation can be combined with a **privacy-first design** to make daily workflows easier.

## Key Features

- **Runs locally with Docker** → all data stays on your machine.
- **Environment variables for secrets** → no hardcoding tokens.
- **Privacy guardrails** → allowlist channels, Gmail label filtering, sensitive data redaction.
- **Slack DM output** → simple daily digest at 9:00 AM IST.
- **Demo-friendly** → exportable workflow JSON and clear portfolio docs.

## Next Steps

- Initialize Docker and env setup.
- Add workflow files under `/workflows`.
- Add documentation under `/docs` (screenshots + demo script).

---

📌 This repo is intentionally scoped small, but follows **best practices** so it can be demoed, extended, and shared safely.
