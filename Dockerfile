FROM golang:1.22.5-alpine AS build

# setting up the working directory in the container
WORKDIR /src

# Copying go mod 
COPY go.mod ./

# Downloading dependencies
RUN go mod download

# Copying the source code
COPY . .

# Building the Go application
RUN go build -o /app .



# Reducing the size of the final image by using a multi-stage build
# Using a minimal base image for the final stage
FROM alpine:latest

# Setting up the working directory in the container
WORKDIR /app

# Copying the built application from the build stage
COPY --from=build /app .

# Copying static files from the build stage to the container
COPY --from=build /src/static ./static

# Exposing the port on which the application will run
EXPOSE 8080

# Command to run the application
CMD ["./app"]



