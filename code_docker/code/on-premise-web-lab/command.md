```shell
docker run -d -p 8000:80 mzc-php-app
```

```shell
docker build -t mzc-php-app .
```

```shell

docker run -d \
  --name mzc-mysqll \
  -e MYSQL_ROOT_PASSWORD=cisco \
  -e MYSQL_DATABASE=test \
  -p 3306:3306 \
  mysql:latest

``` 