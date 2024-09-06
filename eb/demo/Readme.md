## Install deps

```sh
npm i
```

## Start Server

```sh
DATABASE_URL="postgresql://postgres:password@localhost:5432/study-sync" PORT=4567 npm start
```

## Run Postgres Server
```sh
sudo systemctl start docker
```

```sh
docker compose up
```

## Install postgres
```sh
sudo dnf install postgresql postgresql-server
```

## Create db

```sh
createdb study-sync -h localhost -U postgres
```

## Connect 
```sh
psql postgresql://postgres:password@localhost:5432/study-sync
```

## Create schema

```sh
psql study-sync <sql/schema.sql -h localhost -U postgres
```

## Import data

```sh
psql study-sync <sql/seed.sql -h localhost -U postgres
```