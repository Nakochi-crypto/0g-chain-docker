# 0g-chain-docker

docker-compose.yml for 0G nodes

## Prerequisites

- [Docker Compose](https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script)

## Validator Node

[See also the official document](https://docs.0g.ai/0g-doc/run-a-node/validator-node)

1. Clone this repository

    ```
    git clone https://github.com/Nakochi-crypto/0g-chain-docker.git
    cd 0g-chain-docker/validator
    ```

2. Create .env file

    ```
    cat << EOF > .env
    TAG=v0.1.0
    VALIDATOR_NAME=<your_validator_name>
    SEEDS=<comma_separated_peers>
    EOF
    ```

3. Start the node

    ```
    docker compose up -d
    ```

## Commands

### View logs

```
docker compose logs -f
```

### Stop the node

```
docker compose down
```
