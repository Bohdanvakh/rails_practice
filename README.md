# Back-end Application
## Tech details

|**Resource**|**Resource Name**|**Version**|**Comment**|
| :-: | :-: | :-: | :-: |
|Back-end programming language|ruby|3.1.4||
|Back-end web framework|Rails|7.1.2||

## Installation & Lunch

How to run a project locally?

1. Preparing
Make sure that defined ruby and rails gem are installed on your machine. After that, install all other gems used in this project with bundle install. Last step will be starting PostgreSQL database on your localhost within the credentials set at `config/database.yml`

2. Start server
To start our server on uor localhost run `rails s`

3. Stop server
To stop our server on our localhost use `Ctrl-C`

4. Run migrations or detabase schema

To create database `rails db:create`. 

To run migrations `rails db:migrate`

7. Show logs
Rails will automatically show all the logs on your terminal window.

## Additional Instructions for Ubuntu

If you are working on the Ubuntu operating system, you can follow these steps to run the project:

### Installing Dependencies
Install the necessary packages such as Ruby and PostgreSQL using the following commands:

```bash
sudo apt update
sudo apt install ruby-full
sudo apt install postgresql postgresql-contrib libpq-dev
```
1. Installing Gems

Use the `bundle install` command to install all the necessary gems used in your project.

2. Starting PostgreSQL

Start PostgreSQL on your local server:

`sudo service postgresql start`

3. Starting the Server

Launch the server by using the `rails s` command

4. Stopping the Server

To stop the server, use `Ctrl-C`

5. Running Migrations and Creating the Database

Create the database using `rails db:create`. Run migrations using `rails db:migrate`

7. Checking Logs

Rails will automatically display logs in your terminal.
