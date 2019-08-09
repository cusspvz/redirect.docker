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

Adjust Dockerfile to override the defaults

| Variable                | Description                                                         | Default         | Values                                                      |
| ----------------------- | ------------------------------------------------------------------- | --------------- | ----------------------------------------------------------- |
| HSTS                    | Toggles Https Strict Transport Security when it is NON ZERO         | `0`             |                                                             |
| HSTS_INCLUDE_SUBDOMAINS | In case HSTS is on, this toggles the subdomains when it is NON ZERO | `0`             |                                                             |
| HSTS_MAX_AGE            |                                                                     | `-31536000`     |                                                             |
| WORKER_CONNECTIONS      |                                                                     | `1024`          |                                                             |
| HTTP_PORT               |                                                                     | `80`            |                                                             |
| REDIRECT                |                                                                     | `https://$host` |                                                             |
| REDIRECT_TYPE           |                                                                     | `permanent`     | `redirect` (302 redirection), `permanent` (301 redirection) |

