# docker-cron

This is a simple Docker container which executes cron jobs.

## Using the image

```bash
docker run \
    --name some-cron \
    -e CRONTAB_ENTRY="* * * * * touch /some_file"
    dkruger/cron
```
