# TempMonitor-Docker

[Siketyan/TempMonitor](https://github.com/Siketyan/TempMonitor) on Docker on Raspberry Pi

## Requirements

- Raspberry Pi 2/3 (Tested on Raspberry Pi 3 Model B)
- BME280(I2C)
- Docker & Docker Compose

## Usage
### 1. Clone repository

```shell
$ git clone https://github.com/prince0203/TempMonitor-Docker.git && cd TempMonitor-Docker
```

### 2. Build image

```shell
$ TEMPMONITOR_HTTP_PORT=8080 TEMPMONITOR_WEBSOCKET_PORT=8888 docker-compose build
```

### 3. Initialize MySQL

```shell
$ TEMPMONITOR_HTTP_PORT=8080 TEMPMONITOR_WEBSOCKET_PORT=8888 docker-compose up mysql
```

Wait until `mysql_1  | MySQL init process done. Ready for start up.` and press `Ctrl+C` to stop container.

### 4. Start MySQL and TempMonitor

```shell
$ TEMPMONITOR_HTTP_PORT=8080 TEMPMONITOR_WEBSOCKET_PORT=8888 docker-compose up -d
```
