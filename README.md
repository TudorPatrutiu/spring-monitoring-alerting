# Getting Started

### Reference Documentation
For further reference, please consider the following sections:

1. Vault Docker configuration:

* Run Vault in server mode from Docker:
  - commands: 
    - docker-compose -f docker-compose.yml up --build -d
    - docker run -p 8200:8200 -p 8201:8201 --cap-add=IPC_LOCK -e 'VAULT_DEV_ROOT_TOKEN_ID=root_token' vault
  - add vault root token as VAULT_TOKEN env variable in intelliJ
