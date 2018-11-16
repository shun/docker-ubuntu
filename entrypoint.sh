#!/bin/bash
set -e

exec /usr/bin/supervisord -nc /etc/supervisor/supervisord.conf

