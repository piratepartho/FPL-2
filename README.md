# FPL-2
Welcome to the instrunction manual on how to run the Project "**fantasy Premier League**".
Created By: 1805094- Sheikh Hasanul Banna
		        1805107- Partho Kunda

To run the project you will need to follow these steps:

1. Make sure you have oracle,navicat and sqlplus installed.
   to check if you have django installed, run the command : pip --version
   if you dont have django, run the command using the terminal: pip install django.

2. Go to sqlplus command and create a USER

	Enter user-name: / as sysdba
	SQL> alter session set "_ORACLE_SCRIPT"=true;
	SQL> create user PROJECT identified by 1234;
	SQL> grant dba to PROJECT;

**IMPORTANT**: make sure the user is PROJECT and password(identified by) 1234. Otherwise,the sql will fail.

3. go to the github repo and save PROJECT.sql from the repo. Then open navicat and connect to The user we created in step 2.
   select the connection,then right click and select execute sql. In the next window you should see a file selection option. 
   Select PROJECT.sql .Run the process and wait until it's finished.
   
   Your database should be ready now.

4. when the "FPL-2" folder is open in vscode and you have django and python installed properly, 
   In VSCODE "FPL-2" folder, Go to **settings.py** and in **DATABASES**, edit the info properly there.

   'NAME': 'orcl',               replace orcl with the name of SID in your connection(default is orcl)
   'USER': 'PROJECT',
   'PASSWORD': '1234',
   'HOST': 'localhost',
   'PORT': '1521'
   
   If you need to edit these settings to match the connection parameters, do so and save the changes.
   Run command through VScode cmd while in the "FPL-2" folder: python manage.py runserver
   If done correctly, this should work and start the server properly.
   
5.go to http://localhost:8000/ to access the User Side of the project. You can create new user or use ones specified in the USERS table in the database.
 
6.go to http://localhost:8000/admin to access admin login page; To log in, use the following credentials:
  USERNAME: admin
  Password: 1234
use the links to access respective sides of the project

To get further instructions, please follow the video.

Thank you.  
