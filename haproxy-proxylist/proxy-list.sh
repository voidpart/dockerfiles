#!/bin/bash
set -e

/proxyfile-generate.sh
cron

set -- /docker-entrypoint.sh "$@"
exec "$@"
