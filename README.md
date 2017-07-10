# docker-cron

This is a simple Docker container which executes cron jobs.

If you need help writing the cron entry, checkout
[crontab.guru](https://crontab.guru).

## Using the image

This image really isn't as useful on its own, but is better used as a base for
job-specific iamges.

For very simple cron jobs simply specify the CRONTAB_ENTRY environment variable.
This is plugged directly into root's crontab spool.
```bash
docker run \
    --name some-cron \
    -e CRONTAB_ENTRY="* * * * * touch /some_file"
    dkruger/cron
```

More likely you'll need to modify the docker image to add additional utilities
and/or tweak the crontab entry based on other environment variables. To help
with that there is a entrypoint hook directory `/entrypoint.d` which you can
place your own entrypoint files into. They will be sourced by the main
`ENTRYPOINT` before the crontab is written. For an example, checkout
[dkruger/mysql-backup](https://hub.docker.com/r/dkruger/mysql-backup/).
