# NOTES

## Slack Workflow

- Slack User sends slash command `/standup` which sends a `POST` request to SlackController at `/slack/events`
- SlackController for the slash command responds with the json of the modal/ephemeural message 
- The Slack User types their responses to the standup questions
- If user clicks `Confirm` or `Cancel` which sends a `POST` req to `/slack/interact` with a payload containing: 
    - slack message metadata i.e, message_id, type, etc
    - action_id: whether to confirm or cancel this action
    - the answers to 3 questions
- For Canceling
    - Sends back a response to close the ephemeural message
- For Confirming
    - User - find_or_creates
    - Responses - creates and associates with user && questions
    - Returns a success or error message to slack

Stretch:
- also create `/eod` or something that gives a end of day summary
- finds the user that sent the command
- that responds with the answers to the questions given previously
- or redirects to the `/standup` to have them answer the questions

---
- Slack cannot connect to `localhost` create a ngrok tunnel using the static domain

```bash
    ngrok http --url=eminently-primary-alien.ngrok-free.app 3000
    # OR.. Since I added the default static domain to the config file under the alias 'basic'
    ngrok start basic
```

