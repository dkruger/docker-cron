# docker-cron

This is a simple Docker container which executes cron jobs.

## Using the image

This image really isn't as useful on its own, but is better used as a base for
job-specific iamges.

```bash
docker run \
    --name some-cron \
    -e CRONTAB_ENTRY="* * * * * touch /some_file"
    dkruger/cron
```
