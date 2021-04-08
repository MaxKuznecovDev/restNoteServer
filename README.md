<h1 align="center">Simpler Keeper application. Server. </h1>

<h2 align="center"><a  href="http://o993270b.beget.tech/">Live Demo</a></h2>


## Description

A simple notepad for your tasks.

## Where can I get the client part?
You can pull the client part from this repository:
https://github.com/MaxKuznecovDev/restNoteClient


## How to install

### 1.Create a new database for your new tasks:
You can use note.sql from repository and add new database to your database.

### 2.Connection to your database:

```php
// restNoteServer/config/config_db.php 
<?php
/**
 * This file sets initial db connection properties
 */

return [
          'dsn'=>"mysql:host=localhost;dbname=note;charset=utf8",//the location of your database and its name
                                            "userName"=>"root",//the username to connect to your database
                                             "password"=>"root" //the password to connect to your database
       ];

```

## Technology stack

PHP, MySQL, REST
