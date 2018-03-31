# README

# Initial Git:
You must already have created a login to do these steps.
Pulling from master:
- Create new project in IntellJ
- Clone from Git.
- paste https://(yourloginname)@bitbucket.org/yeupho/golems.git
- Test connection and continue 

# Pushing your changes:
1. git checkout -b branch_name (to create new branch)
2. git branch (to make sure you're in the correct branch)
3. git commit -a -m "Description"
    * if there is an error saying "Please tell me who you are." run both commands
    * git config --global user.email "you@example.com"
    * git config --global user.name "Your Name"
    * Example using BitBucket information:
    * git config --global user.email "joshm2050@gmail.com"
    * git config --global user.name "jmohan123"
    * Then run the git commit -a -m "Description" command again
4. git push -u origin branch_name
    * Enter your password and enter if necessary
    * Make sure changes are located in the branch in the repository

5. Ideally, merge contents into master branch only in github.com so that changes can be reviewed beforehand

# Ways to pull project 
This works if you already have the project folder in your computer
- git fetch then git pull
OR
- git pull (does a git fetch and git pull) 

# Steps after pulling
- bundle install
- rails db:drop
- rails db:create
- rails db:migrate
- rails db:seed 
OR
- rails db:reset

# Steps after cloning
- First establish connection to postgres in the database tab in intellij, download drivers#
- bundle install
- rails db:create (creates dev and test databases based on database.yml)
- After you db:create, replace the database name in the postgres connection to:
- Do something new: clb_development
- rails db:migrate


# Shutdown Rails stuff
- View sessions with lsof -wni tcp:3000

-if Hirb is installed, do require 'hirb' then Hirb.enable

# bcrypt error
- Follow instruction at 
- https://github.com/codahale/bcrypt-ruby/issues/142

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Edward Sanchez was not here

