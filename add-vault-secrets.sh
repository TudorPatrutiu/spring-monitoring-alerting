#!/bin/bash
VAULT_RETRIES=5
echo "Vault is starting..."
until vault status > /dev/null 2>&1 || [ "$VAULT_RETRIES" -eq 0 ]; do
        echo "Waiting for vault to start...: $((VAULT_RETRIES--))"
        sleep 1
done
echo "Authenticating to vault..."
vault login token=root_token
echo "Initializing vault..."
vault secrets enable -version=2 -path=my.secrets kv
echo "Adding entries..."
vault kv put my.secrets/mongo host=spring-monitoring-alert.bkn47gv.mongodb.net/test
vault kv put my.secrets/mongo password=passsss
echo "Complete..."