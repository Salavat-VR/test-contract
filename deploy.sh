near delete token.ella-token.testnet ella-token.testnet

near create-account token.ella-token.testnet --masterAccount ella-token.testnet --initialBalance 5

near deploy token.ella-token.testnet --wasmFile ./ella-token/target/wasm32-unknown-unknown/release/ella_token.wasm --initFunction 'new_default_meta' --initArgs '{"owner_id": "token.ella-token.testnet"}'

# see metadata
near view token.ella-token.testnet ft_metadata '{}'

# see total_supply on account  = 100000000
near view token.ella-token.testnet ft_balance_of '{"account_id": "token.ella-token.testnet"}'

near call token.ella-token.testnet account_multisend '{"amounts": ["200", "300"],
"account_ids": ["iamdmytro.testnet", "dmyttro.testnet"]}' --account_id token.ella-token.testnet
