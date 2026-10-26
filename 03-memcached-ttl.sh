#!/usr/bin/env bash
set -euo pipefail
echo '$ date -Is'; date -Is
echo "$ printf 'set key1 0 5 5\\r\\nhello\\r\\nset key2 0 5 5\\r\\nworld\\r\\nset key3 0 5 3\\r\\n123\\r\\nquit\\r\\n' | nc -N 127.0.0.1 11211"
printf 'set key1 0 5 5\r\nhello\r\nset key2 0 5 5\r\nworld\r\nset key3 0 5 3\r\n123\r\nquit\r\n' | nc -N 127.0.0.1 11211
echo "$ printf 'get key1 key2 key3\\r\\nquit\\r\\n' | nc -N 127.0.0.1 11211"
printf 'get key1 key2 key3\r\nquit\r\n' | nc -N 127.0.0.1 11211
echo '$ sleep 6'; sleep 6
echo '$ date -Is'; date -Is
echo "$ printf 'get key1 key2 key3\\r\\nquit\\r\\n' | nc -N 127.0.0.1 11211"
printf 'get key1 key2 key3\r\nquit\r\n' | nc -N 127.0.0.1 11211
