# rails-mini

A small Rails project that accesses a product purchases database to recommend
products for users.

## Features

- ActiveRecord associations between tables, allows `User.items`
- rake task to import raw data from provided gzipped-csv files
- Bootstrap UI
- `devise` gem for authentication and login user management

## Running in Docker

Make sure you have Docker installed. On Windows and OS X,
[boot2docker](http://boot2docker.io) provides an installer that sets up
a boot2docker VM inside of VirtualBox that has docker installed. A newer,
more fun-looking option is [kitematic](https://kitematic.com/), which has
a GUI for Mac OS X, and now also for Windows.

```sh
$ git clone http://github.com/branning/rails-mini.git
$ cd rails-mini/mini-proj
$ boot2docker up
$ boot2docker ssh
$ docker build -t mini_proj .
```

Your app should now be running on [localhost:3000](http://localhost:3000/).


## Running Locally

Make sure you have Ruby 2.2+ and Rails 4.2+ installed. The CSV import step
is going to take a while, so there's definitely time for both coffee and
a bathroom break. ActiveRecord.create is being called on every row of the data,
wrapped in a transaction, which is silly, but does work. The right way is to
use the database's own bulk loading facility, or even a single mass INSERT.

```sh
$ git clone http://github.com/branning/rails-mini.git
$ cd rails-mini/mini_proj
$ bundle install
$ bundle exec rake db:create db:migrate import_csv:all
$ rails server -p 3000 -b 0.0.0.0
```

Your app should now be running on [localhost:3000](http://localhost:3000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate import_csv:all
$ heroku open
```

