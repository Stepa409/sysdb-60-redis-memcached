#!/usr/bin/env bash
set -euo pipefail
echo '$ redis-cli -n 15 SET key5 5'
redis-cli -n 15 SET key5 5
echo '$ redis-cli -n 15 OBJECT ENCODING key5'
redis-cli -n 15 --no-raw OBJECT ENCODING key5
echo '$ redis-cli -n 15 INCRBY key5 5'
redis-cli -n 15 --no-raw INCRBY key5 5
echo '$ redis-cli -n 15 GET key5'
redis-cli -n 15 --no-raw GET key5
