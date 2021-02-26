# wqbase

Open this folder in VS Code and click "Reopen in Container" when prompted, or use the `Remote-Containers:Open Folder in Container...` task by clicking `><` in the lower-left corner and select it in the list or bring up the command pallet with `Ctrl-Shift-p`.

From the terminal, you can change into the `interface` directory: 

    cd interface

Start Django's development server:

    python manage.py runserver

Create the the initial database:

    python manage.py migrate

Then add a superuser (admin)

    python manage.py createsuperuser --email someone@somewhere.com --username admin

