export VAULT_ADDR='http://127.0.0.1:8200'
export VAULT_TOKEN=$(cat /root/.vault-token)
./nomad agent -dev -vault-enabled -vault-token=$VAULT_TOKEN -vault-address=$VAULT_ADDR

