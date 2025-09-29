# n8n Smart Digest

A privacy-first automation demo that assembles a daily Slack digest from allow-listed Slack channels and Gmail messages tagged with the `Digest` label. The workflow runs entirely on your machine via Docker, redacts sensitive context before summarization, and posts the final update as a direct message to your chosen Slack recipient.

## Quick Start
1. Clone the repository:
   ```bash
   git clone https://github.com/your-org/n8n-smart-digest.git
   cd n8n-smart-digest
   ```
2. Copy the example environment file and fill in your credentials:
   ```bash
   cp .env.example .env
   ```
3. Launch n8n with Docker Compose:
   ```bash
   make up
   ```
4. Open [http://localhost:5678](http://localhost:5678) in your browser to access the n8n editor.

Use `make down` when you're finished to stop the containers.

## Environment Setup
Populate the `.env` file with the required credentials:
- `N8N_BASIC_AUTH_USER` and `N8N_BASIC_AUTH_PASSWORD` secure the n8n editor.
- `SLACK_BOT_TOKEN` is used for the Slack DM output. Create a bot with access only to the allow-listed channels and the DM recipient.
- `OPENAI_API_KEY` powers the summarization step.
- `TZ` defaults to `Asia/Kolkata` for digest scheduling but can be adjusted.

These values are passed to the container and accessed within n8n using expressions such as `{{$env.SLACK_BOT_TOKEN}}` so secrets are never hardcoded.

## Privacy-First Guardrails
- Restrict the Slack bot scope to channels you explicitly maintain for digestable updates, and direct messages only to yourself or a controlled test channel.
- Filter Gmail by the `Digest` label so only intentional messages are processed.
- Disable **Execution data save on workflow success/error** in *Settings → Workflow* once testing is complete to avoid retaining personal data.
- Redact sensitive fields (PII, financial data, etc.) inside the workflow before sending content to external APIs.

## Makefile Usage
The provided `Makefile` wraps common Docker Compose commands:
- `make up` – start the n8n stack in the background.
- `make down` – stop and remove the containers.
- `make logs` – tail the n8n container logs.
- `make restart` – bounce the stack to pick up config changes.

## Contributing & Portfolio Assets
- Export workflow JSON files from n8n into the `workflows/` directory to version automation changes.
- Store supporting documentation, screenshots, and demo recordings inside `docs/` (with large binary assets ignored by default).
- Before sharing, scrub exports and screenshots for sensitive data to keep the demo privacy-first.
