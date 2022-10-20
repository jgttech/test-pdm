# Test PDM

This is a super basic example of an ASGI [Quart](https://quart.palletsprojects.com/en/latest/) service running with PDM without any virtual environment.

---

## What is [Quart](https://github.com/pallets/quart)?

Quart is an async Python web microframework. Using Quart you can:

1. Render and serve HTML templates.
2. Write (RESTful) JSON APIs.
3. Serve WebSockets.
4. Stream request and response data.
5. Do pretty much anything over the HTTP or WebSocket protocols.

---

## Requirements

Must have the following installed:

| package | Version | Homebrew |
|:--------|:--------|:---------|
| `pdm` | `2.1.5` | [brew install pdm](https://formulae.brew.sh/formula/pdm#default) |
| `python` | `3.10.8` | N/A |

---

## Get Started

- Run `pdm install`
- Run `pdm start`

---

## Curl: See for Yourself

You can run these commands to test the POST request to see that it works:

**GET Request**
```bash
curl -X GET http://localhost:5000
```

**POST Request**
```bash
curl -X POST http://localhost:5000/echo -H 'Content-Type: application/json' -d '{ "hello": "world" }'
```
