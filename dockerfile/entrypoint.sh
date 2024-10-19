#!/bin/bash

# Run the Flask database migration commands
flask db init
flask db migrate -m "entries table"
flask db upgrade

# Start the Gunicorn server
exec gunicorn --bind 0.0.0.0:8000 crudapp:app