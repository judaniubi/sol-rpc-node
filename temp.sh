#!/bin/bash
set -e
set -u
export RUST_LOG=error
solana-validator \
        --ledger /var/solana/data/ledger \
        --accounts /var/solana/accounts \
        --identity /var/solana/data/config/validator-keypair.json \
        --known-validator 7Np41oeYqPefeNQEHSv1UDhYrehxin3NStELsSKCT4K2 \
        --known-validator GdnSyH3YtwcxFvQrVVJMm1JhTS4QVX7MFsX56uJLUfiZ \
        --known-validator DE1bawNcRJB9rVm3buyMVfr8mBEoyyu73NBovf2oXJsJ \
        --known-validator CakcnaRDHka2gXyfbEd2d3xsvkJkqsLw2akB3zsN1D2S \
        --expected-genesis-hash 5eykt4UsFv8P8NJdTREpY1vzqKqZKvdpKuc147dw2N9d \
        --entrypoint entrypoint.mainnet-beta.solana.com:8001 \
        --entrypoint entrypoint2.mainnet-beta.solana.com:8001 \
        --entrypoint entrypoint3.mainnet-beta.solana.com:8001 \
        --entrypoint entrypoint4.mainnet-beta.solana.com:8001 \
        --entrypoint entrypoint5.mainnet-beta.solana.com:8001 \
        --rpc-port 8899 \
        --dynamic-port-range 8000-8020 \
        --wal-recovery-mode skip_any_corrupted_record \
        --init-complete-file /var/solana/data/init-completed \
        --limit-ledger-size 50000000 \
        --log - \
        --only-known-rpc \
        --full-rpc-api \
        --no-voting \
        --enable-rpc-transaction-history \
        --enable-cpi-and-log-storage
