# The-Ruby-on-Rails-Blog-App
This is a Rails [ruby on rails] Blog app a classic example of a blog website. A fully functional website that shows the list of posts and empower readers to interact with them by adding comments and liking posts.

### [Linter Setup](https://github.com/microverseinc/linters-config/tree/master/ror)


To create a new Rails application with PostgreSQL as the database. Here's how you can do it:

1. First, make sure you have Rails installed. If not, you can install it with the following command:
```bash
gem install rails
```
2. Next, ensure PostgreSQL is installed and running on your machine.

3. Now you can create your new Rails application named "blog" with PostgreSQL as the database using the command you provided:
```bash
rails new blog --database=postgresql
```
This will create a new Rails application in a directory named "blog" and configure it to use PostgreSQL for the database.

4. After running the command, be sure to update your `config/database.yml` file with the correct username and password for your PostgreSQL installation.

5. Finally, create the database with:
```bash
rake db:create
```
This will create a new PostgreSQL database for your application.

Remember to navigate into your new "blog" directory before starting the Rails server with `rails s`.

