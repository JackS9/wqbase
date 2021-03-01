# wqbase

Open this folder in VS Code and click "Reopen in Container" when prompted, or use the `Remote-Containers:Open Folder in Container...` task by clicking `><` in the lower-left corner and select it in the list or bring up the command pallet with `Ctrl-Shift-p`.

From the terminal, change to the `interface` directory (top lever where manage.py is, not the subdirectory): 

    cd interface

Create the the initial database:

    python manage.py migrate
    python manage.py makemigrations wqbase
    python manage.py migrate wqbase

Add a superuser (admin)

    python manage.py createsuperuser --email someone@somewhere.com --username admin

Start Django's development server:

    python manage.py runserver

Go to localhost:8000 and confirm that the Django server is running.

To populate the Stations and Results tables in the database with sampe data, log in to Adminer at localhost:8080 the following credententials:

    System:  MySQL
    Server:  db
    Username:  wqpuser
    Password:  waterquality101
    Database:  wqbase

Use Import to upload and execute wqbbase_data.sql

Confirm that all is well by logging in to localhost:8080/admin/ using the credentials created above for superuser.

