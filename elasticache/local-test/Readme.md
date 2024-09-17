# REDIS LOCAL

## Install and inicialize
```sh
sudo systemctl start docker

sudo dnf install redis

docker compose up
```

## Check connection

```sh
redis-cli ping
```

## Demo command

```sh
redis-cli set name andres #Associate key name with value andres
redis-cli get name #Return "andres"
redis-cli set age 26 #Associate key age with value 26
redis-cli INCR age #Increment in one the value store in age
redis-cli get age #Return 27
```