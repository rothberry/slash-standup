# Slash Standup


## Deliverables
- Slack slash command for */standup*
- opens a dialog the the user can input 3 fields
- - What you did yesterday?
- - What you doing today?
- - Any blockers?
- End of Day summary
- - Reiterate the responses for that day


## Database

Questions has_many Responses
User has_many Responses
User has_many Questions through Responses

Users
- username
Questions
- questions
Responses
- answer, user_id, question_id, timestamp

## Notes