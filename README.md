# 🚀 Docker commands 🚀

## Build the image and run the container in Devolopment mode

#### Hot reload is enabled

```bash
docker-compose up
```

---

## Build the image and run the container in Production mode

#### Hot reload is disabled

```bash
docker-compose -f docker-compose.production.yml up --build --force-recreate
```

---

## Stop the container

```bash
docker-compose down
```

---

### When new env's added to the .env file, restart the container

```bash
docker-compose up
```

---

### When new packages are installed or updated, rebuild the image

```bash
docker-compose up --build
```

---

### Tips

##### When rebuilding the image or restarting the container, always shutdown the container first

```bash
docker-compose down
```

##### Want to run the container in the background? (no logs)

###### Add the -d flag to the docker-compose command (see examples below)

```bash
docker-compose up -d
```

#### See logs of the container

```bash
docker logs -f CONTAINER_ID OR CONTAINER_NAME
```

#### Get in mysql shell

```bash
docker exec -it CONTAINER_ID OR CONTAINER_NAME mysql -u root -p
```

---

### Notes

###### Get Docker Desktop: [Docker Desktop](https://www.docker.com/get-started/)

###### Don't forget to change the .env file, remove the .example extension

###### Change passwords, usernames, db names, etc. in the docker-compose.yml file

###### The folder db is used to store the database data, so it won't be lost when the container is stopped

###### There is a dump.sql file to get up and running quickly

###### More info will be added later.

### ❤️ 🤟🏻
