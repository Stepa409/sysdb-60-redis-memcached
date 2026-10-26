#!/usr/bin/env bash
set -euo pipefail
echo '$ systemctl --no-pager --full status memcached'
systemctl --no-pager --full status memcached
