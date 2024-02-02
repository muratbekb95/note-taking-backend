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

Run the project and **Liquibase** wil do all other stuff for you.