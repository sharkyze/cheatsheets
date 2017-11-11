#Cheatsheet to start a django project from scratch
## From [coding entrepreneurs](https://www.codingforentrepreneurs.com/blog/create-a-blank-django-project)
========

1. Create dev/code directory for general project storage
````
cd ~/
mkdir code && cd code
````

2. Create virtual environment
````
conda create -n "django" pip django
source activate django
```` 


3. Start project
````
mkdir src && cd src
django-admin.py startproject projectname .
#or on windows
.\Scripts\django-admin.py startproject projectname .
````


4. Create new setting module
```
# currently working in 
# ~/code/projectname/src/ on mac/linux
# \Users\YourName\code\projectname\src on windows

cd projectname

mkdir settings && cd settings




# currently working in 
# ~/code/cfehome/src/newproject/settings/ on mac/linux
# \Users\YourName\code\newproject\src\newproject\settings\ on windows

echo "from .base import *

from .production import *

try:
   from .local import *
except:
   pass
" > __init__.py

````


Then change BASE_DIR in settings.py:

````
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# to
BASE_DIR = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
````


Move default settings.py into new settings module and rename settings.py to base.py:
````
# mac/linux
mv ~/code/projectname/src/projectname/settings.py ~/code/projectname/src/projectname/settings/base.py

# windows
move \Users\YourName\code\projectname\src\projectname\settings.py \Users\YourName\code\projectname\src\settings\base.py
````

Copy Local settings (local.py) to make new (base.py & production.py) file:
````
# mac/linux
cp ~/code/projectname/src/projectname/settings/base.py ~/code/projectname/src/projectname/settings/local.py

cp ~/code/projectname/src/projectname/settings/base.py ~/code/projectname/src/projectname/settings/production.py

#windows
copy \Users\YourName\code\projectname\src\projectname\settings\base.py \Users\YourName\code\projectname\src\projectname\settings\local.py

copy \Users\YourName\code\projectname\src\projectname\settings\base.py \Users\YourName\code\projectname\src\projectname\settings\production.py
````



5. Some other common installations (optional)
````
# for a postgresql database
pip install psycopg2

# for a mysql database
pip install mysqlclient #python3
pip install MySQL-python #python2

# for use on heroku
pip install gunicorn dj-database-url

pip install django-crispy-forms
pip install pillow
````


6. Create requirements folder:
````
mkdir requirements && cd requirements
pip freeze > requirements.txt
````


7. Run migrations & Createsuperuser
````
python manage.py migrate
python maange.py createsuperuser
````