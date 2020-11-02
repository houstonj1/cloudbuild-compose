# Cloud Build Compose

Demo project using Docker Compose inside of Google Cloud Build

**Scenario 1: Running tests _before_ building**

In this scenario, the package will be installed and tested within the pipeline before building an artifact. This requires the Cloud Build step that tests the code to be aware of the Docker network setup by Cloud Build.

To use the network setup by Cloud Build, the docker-compose.yml needs the following added: 

```yaml
networks:
  default:
    external:
      name: cloudbuild
```

This will start all containers defined in the compose file on the same network as any other build steps, allowing the use of aliases such as `postgres`, `redis`, `rabbit`

<br><hr><br>

**Scenario 2: Running tests _after_ building**

In this scenario, the Docker image is build first with all the dependencies required for testing, and then the tests are run inside the artifact using the docker run command.

To test using docker run, the `--network` flag is used to run the container on the cloudbuild network.

```bash
docker run --network cloudbuild <docker-image> <command> <args>
```
<br>

## Local Environment

Requirements:
 - [Docker](https://docs.docker.com/get-docker/)
 - [Docker Compose](https://docs.docker.com/compose/install/)
 - [Nodejs](https://github.com/nvm-sh/nvm)
 - [Yarn](https://yarnpkg.com/getting-started/install)


