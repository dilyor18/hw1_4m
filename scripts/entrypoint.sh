#!/bin/sh

echo "Waiting for DB..."

# если будет postgres потом — пригодится
# пока просто пауза
sleep 2

echo "Apply migrations"
python manage.py migrate

echo "Collect static"
python manage.py collectstatic --noinput

echo "Starting server"
exec "$@"
