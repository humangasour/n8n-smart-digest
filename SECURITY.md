# Security & Privacy Guidelines

This project is intentionally designed to run locally and respect user privacy. Follow the guidance below to keep your workflow secure.

## Environment Variables
- Store all secrets (Slack bot token, Gmail credentials, OpenAI API key) in the `.env` file or your host environment.
- Never hardcode secrets inside workflows. Use n8n's environment helpers such as `{{$env.SLACK_BOT_TOKEN}}` when configuring credentials.

## Least-Privilege Access
- Create a dedicated Slack bot with access only to the channels required for the digest.
- Restrict the Gmail label to `Digest` so n8n only reads explicitly tagged emails.
- Scope API keys to the minimal permissions needed for summarization and message posting.

## Data Handling
- Disable n8n's execution data retention once your workflow is working.
- Redact or mask any sensitive fields before generating summaries or storing intermediate data.
- Regularly prune the `n8n_data` directory if persistent storage is enabled.

## Reporting Issues
If you discover a vulnerability or privacy concern, please open an issue or contact the maintainer directly so it can be addressed quickly.
