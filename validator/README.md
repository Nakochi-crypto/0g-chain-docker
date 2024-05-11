## Validator Node

[See also the official document](https://docs.0g.ai/0g-doc/run-a-node/validator-node)

1. Clone this repository

    ```
    git clone https://github.com/Nakochi-crypto/0g-chain-docker.git
    cd 0g-chain-docker/validator
    ```

2. Copy and edit .env file

    ```
    cp .env.sample .env
    nano .env
    ```

3. Start the node

    ```
    docker compose up -d
    ```

4. Create Validator

    Prepend `docker compose exec validator` to each command on the official document like:

    ```
    docker compose exec validarot 0gchaind keys add <key_name> --eth
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

## Special Thanks

- [qyeah98/0g](https://github.com/qyeah98/0g/) by @qyeah98
