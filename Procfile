release: python manage.py migrate --no-input
release: python manage.py runserver 0.0.0.0:8000
web: gunicorn booctop.wsgi
