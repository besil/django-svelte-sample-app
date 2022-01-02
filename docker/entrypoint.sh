PORT=${1:-8000}
poetry run python manage.py makemigrations
poetry run python manage.py migrate
poetry run python manage.py collectstatic --noinput
poetry run gunicorn --bind 0.0.0.0:$PORT myapp.wsgi