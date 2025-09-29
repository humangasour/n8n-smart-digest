# Portfolio Notes

## Screenshot Checklist
- n8n editor dashboard with the Smart Digest workflow highlighted.
- Slack DM showing a redacted sample digest message.
- Gmail inbox filtered by the `Digest` label illustrating the allow-listed inputs.
- Docker Desktop or CLI output demonstrating the container running locally.

## 5-Minute Demo Script (Outline)
1. **Setup (30s)** – Mention that the project runs locally with Docker and uses `.env` secrets.
2. **Workflow Tour (90s)** – Walk through the n8n nodes: Slack channel fetch, Gmail search, redaction step, OpenAI summarization, and Slack DM output.
3. **Privacy Guardrails (60s)** – Highlight allow-listed sources, Gmail label filtering, disabled execution data retention, and environment-variable credentials.
4. **Run & Result (60s)** – Trigger the workflow manually, show the redacted digest in Slack, and note how sensitive details are masked.
5. **Extensibility (60s)** – Discuss potential enhancements (calendar integration, multi-channel scheduling) while stressing continued privacy-first design.
6. **Close (30s)** – Summarize value proposition for Apply Digital AI Foundations portfolio.
