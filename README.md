First go to Terminal and enter the following command:
```
mysql -u root -p
```

Later create database named `note_taking_backend` using the below command, please:
```
CREATE DATABASE note_taking_backend;
```

Go back to project **note-taking-backend**.

After you open a project, go to **application.properties** which is located on a path: ```src/main/resources/application.properties```

Change password to your password in **spring.datasource.password** section.

Run the project and **Liquibase** will do all other stuff for you.


Following are routes to call:

```POST http://localhost:8080/note?note=Test``` - operation to save a text note

```GET  http://localhost:8080/note/list``` - operation to retrieve all notes

```GET http://localhost:8080/note/{id}``` - operation to retrieve a single note by ID

Make sure your **note_taking_backend** app runs on port **8080** and MySQL on port **3306**