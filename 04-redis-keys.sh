#!/usr/bin/env bash
set -euo pipefail
echo '$ redis-cli -n 15 MSET key1 hello key2 world key3 123'
redis-cli -n 15 MSET key1 hello key2 world key3 123
echo '$ redis-cli -n 15 KEYS "*"'
redis-cli -n 15 --no-raw KEYS '*'
echo '$ redis-cli -n 15 MGET key1 key2 key3'
redis-cli -n 15 --no-raw MGET key1 key2 key3
