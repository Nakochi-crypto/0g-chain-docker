#!/bin/bash

set -euo pipefail

echo "Initialize Node"
if [[ -f ~/.0gchain/config/config.toml ]]; then
  echo "Skipping"
else
  0gchaind config chain-id zgtendermint_16600-1
  0gchaind init "$VALIDATOR_NAME" --chain-id zgtendermint_16600-1
fi

echo "Get the Genesis File"
wget -q "https://github.com/0glabs/0g-chain/releases/download/$TAG/genesis.json"
mv genesis.json ~/.0gchain/config
0gchaind validate-genesis

echo "Add Seed Nodes"
sed -i -e "/^seeds =/c seeds = \"$SEEDS\"" ~/.0gchain/config/config.toml
sed -n -e "/^seeds =/p" ~/.0gchain/config/config.toml

exec 0gchaind "$@"
