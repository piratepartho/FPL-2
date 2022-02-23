# FANTASY PREMIER LEAGUE
Welcome to the instrunction manual on how to run the Project "**fantasy Premier League**".<br />
Created By: 1805094- Sheikh Hasanul Banna<br />
		        1805107- Partho Kunda<br />

To run the project you will need to follow these steps:<br />

1. Make sure you have oracle,navicat and sqlplus installed.<br />
   to check if you have django installed, run the command : pip --version<br />
   if you dont have django, run the command using the terminal: pip install django.<br />

2. Go to sqlplus command and create a USER<br />

	Enter user-name: / as sysdba<br />
	SQL> alter session set "_ORACLE_SCRIPT"=true;<br />
	SQL> create user PROJECT identified by 1234;<br />
	SQL> grant dba to PROJECT;<br />

**IMPORTANT**: make sure the user is PROJECT and password(identified by) 1234. Otherwise,the sql will fail.<br />

3. go to the github repo and save PROJECT.sql from the repo. Then open navicat and connect to The user we created in step 2.<br />
   select the connection,then right click and select execute sql. In the next window you should see a file selection option. <br />
   Select PROJECT.sql .Run the process and wait until it's finished.<br />
   
   Your database should be ready now.<br />

4. when the "FPL-2" folder is open in vscode and you have django and python installed properly, <br />
   In VSCODE "FPL-2" folder, Go to **settings.py** and in **DATABASES**, edit the info properly there.<br />

   'NAME': 'orcl',               replace orcl with the name of SID in your connection(default is orcl)<br />
   'USER': 'PROJECT',<br />
   'PASSWORD': '1234',<br />
   'HOST': 'localhost',<br />
   'PORT': '1521'<br />
   
   If you need to edit these settings to match the connection parameters, do so and save the changes.<br />
   Run command through VScode cmd while in the "FPL-2" folder: python manage.py runserver <br />
   If done correctly, this should work and start the server properly.<br />
   
5. go to http://localhost:8000/ to access the User Side of the project. You can create new user or use ones specified in the USERS table in the database.<br />
 
6. go to http://localhost:8000/admin to access admin login page; To log in, use the following credentials:<br />
  USERNAME: admin<br />
  Password: 1234<br />
use the links to access respective sides of the project<br />

To get further instructions, please follow the video.<br />

Thank you.  
