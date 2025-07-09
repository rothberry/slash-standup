# NOTES

- Slack cannot connect to `localhost` create a ngrok tunnel using the static domain

```bash
    ngrok http --url=eminently-primary-alien.ngrok-free.app 3000
    # OR.. Since I added the default static domain to the config file under the alias 'basic'
    ngrok start basic
```