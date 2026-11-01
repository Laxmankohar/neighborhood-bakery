# The Neighborhood Bakery

A small bakery website built with Go's standard `net/http` package. It includes a home page, an about page, a contact page, and a bakery menu, with a shared responsive stylesheet.

## Requirements

- Go 1.22.5 or later

## Run locally

From the project directory, start the web server:

```bash
go run .
```

The server listens on port `8080`. Open [http://localhost:8080/](http://localhost:8080/) in your browser.

## Pages

| Page | URL |
| --- | --- |
| Home | `/` or `/home` |
| About | `/about` |
| Contact | `/contact` |
| Menu | `/courses` |

Static assets, including the shared stylesheet, are served from `/static/`.

## Run tests

```bash
go test ./...
```
