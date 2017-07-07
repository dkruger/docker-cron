#!/bin/sh

cat << EOF > /var/spool/cron/crontabs/root
${CRONTAB_ENTRY}
EOF

exec "$@"
