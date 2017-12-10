# ZionHostDNS

ZionHostDNS is a new PowerDNS webinterface written in Python and powered by Django.


## Features

  - Add/Edit/Remove DNS records easily
  - Use the REST-API to change DNS records within your application
  - Add users to certain domains to allow them editing DNS records

___

### Tech

ZionHostDNS uses awesome open source tools!

* [Django](https://www.djangoproject.com/)
* [Knockout.js](http://knockoutjs.com/)
* [Twitter Bootstrap](http://getbootstrap.com/)
* [SweetAlert](https://sweetalert.js.org/)
* [Bootstrap Notify](http://bootstrap-notify.remabledesigns.com/)
* [Navigo](https://github.com/krasimir/navigo)

___

### Screenshots

|  |   |
|:-------------:|:-------------:|
|![Domain list](https://dr0p.it/Ckam.png "Domain list")|![Records list](https://dr0p.it/ISG9.png "Records list")|
|![API preview](https://dr0p.it/p3tI.png "API preview")||
|  |   |

___

### Installation
Install the following dependencies:

```sh
$ apt update
$ apt install python2.7 python-pip git uwsgi python-mysqldb
For mysql:
$ apt install mysql-client libmysqlclient-dev
For mariadb:
$ apt install libmariadbclient-dev
```

Clone the repository
```sh
$ git clone https://github.com/ZionHost/ZionHostDNS.git
```

Install and setup the virtualenv
```sh
$ pip install virtualenv
$ virtualenv venv
$ source venv/bin/activate
```

Install the python requirements
```sh
$ pip install -r requirements.txt
```

* Rename `ZionHostDNS/settings.py.dist` to `ZionHostDNS/settings.py`
* Change MySQL settings and secret key in `ZionHostDNS/settings.py`

Apply migrations
```sh
$ python manage.py migrate
```

Create a superuser
```sh
$ python manage.py createsuperuser
```

___


### Todos

 - Complete README.md :)
 - Please send feature requests
