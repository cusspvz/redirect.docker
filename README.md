# redirect.docker

catch all http redirector, useful for http -> https redirects

Insanely fast and small! Based on alpine and nginx.

## Launching

```bash
docker run -d -e REDIRECT="https://www.google.com/" -p 8080:80 cusspvz/redirect
```

Now you should be able to browse to `http://localhost:8080/any/path` and 
have your browser redirected to `https://www.google.com/any/path`.

## Environment variables

### WORKER_CONNECTIONS
Defaults to: 1024

### HTTP_PORT
Defaults to: 80

### REDIRECT
Defaults to: https://$host
