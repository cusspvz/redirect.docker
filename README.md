# redirect.docker

catch all http redirector, useful for http -> https redirects

## Launching

```bash
docker run -d -e REDIRECT="https://www.mysite.com/" cusspvz/redirect
```

## Environment variables

### WORKER_CONNECTIONS Defaults to: 1024

### HTTP_PORT Defaults to: 80

### REDIRECT Defaults to: https://$host
