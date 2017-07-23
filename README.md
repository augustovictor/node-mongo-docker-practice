# Dockerized node sample app
It is an application that stores received requests in mongo database;

### Instructions

Build and run the application
```sh
docker-compose up --build
```

Make a request
```sh
curl -i localhost
```

Retrieve the requests made
```sh
curl -i localhost/requests
```

Stop the application and remove image, volumes, network and container
```sh
docker-compose down -v --rmi local
```