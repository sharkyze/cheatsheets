```
$ mkdir app
$ mkdir app/static
$ mkdir app/templates
$ mkdir tmp
```


app/__init__.py:
```python
from flask import Flask

app = Flask(__name__)
from app import views



app/views.py:
from app import app

@app.route('/')
@app.route('/index')
def index():
    return "Hello, World!"
```


root run.py
```python
#!/usr/bin/env python
from app import app
app.run(debug=True)
```

Carefull with the shebang when using conda env:
The python used by an activated conda environment is ${CONDA_PREFIX}/bin/python and not /usr/bin/python

see : <https://stackoverflow.com/questions/41914739/how-do-i-activate-a-conda-env-in-a-subshell>


To indicate that the run script is an executable:
```
chmod a+x run.py
```

To run it:
```
./run.py
```


to generae a secret key:
```
>>> import os
>>> os.urandom(24)
``


