#!/bin/bash

DIRECTORY=/home/hello_app

python $DIRECTORY/hello/manage.py migrate                  # Apply database migrations
python $DIRECTORY/hello/manage.py collectstatic --noinput  # Collect static files

# Start Gunicorn processes
echo "Starting Gunicorn."
exec gunicorn hello.wsgi:application \
    --chdir hello \
    --name hello_django \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=$DIRECTORY/logs/gunicorn.log \
    --access-logfile=$DIRECTORY/logs/access.log \
    "$@"