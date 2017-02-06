# docker-sonarqube
Dockerized SonarQube Server for continuous code quality.

This project provides an image of [SonarQube 6.2](https://docs.sonarqube.org/display/HOME/SonarQube+Platform) with the following plugins: 
* Sonar Python Plugin 1.7.0.1195

Additionally, this project also provides [docker-compose.yml](docker-compose.yml) which can be used to easily provisioning an environment for SonarQube.
* [SonarQube 6.2](https://hub.docker.com/_/sonarqube/)
* [PostgresSQL 9.6.1](https://hub.docker.com/_/postgres/)

## Usage

Before you start, you need to make sure you have the following dependencies installed:

* [Install Docker](http://docs.docker.com/installation/)
* [Install Docker Compose](http://docs.docker.com/compose/install/)

### Run As An Image

Pull the image from the docker hub.

```bash
docker pull manat/sonarqube-python
```

Alternately you can build the image yourself.

```bash
git clone https://github.com/manat/docker-sonarqube.git
cd docker-sonarqube
docker build --tag="$USER/sonarqube" .
```

### Run With Docker Compose 

You may choose to leverage docker compose to help provisioning a complete environment for SonarQube.

```bash
git clone https://github.com/manat/docker-sonarqube.git
cd docker-sonarqube
cp .env.example .env
docker-compose up
```

#### Notes
`.env` provides environment variables that can be used by docker-compose. This is to promote separation of config from the docker-compose file as it may varies across deployment. This project provides an example env file as `.env.example`.

Point your browser to http://localhost:9000/ and login using the default username and password:

* username: **admin**
* password: **admin**

You should now have the SonarQube application up and ready for testing. If you want to use this image in production the please read on.

#### Under The Hood

This compose file is defined to have 2 separate containers. First is the SonarQube container itself. Second is the PostgreSQL container. Docker Compose helps linking these 2 containers together.

#### Data Store

The Postgresql database container is configured to persist data inside a Volume: `/var/lib/postgresql/data`.

## References

  * http://www.sonarqube.org/
  * http://docs.codehaus.org/display/SONAR/Browsing+SonarQube
  * http://docs.codehaus.org/display/SONAR/Setup+and+Upgrade

## License

**manat/docker-sonarqube** is available under the [MIT license](LICENSE).


