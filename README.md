# Rails fullstack template

This project is a [Rails](http://rubyonrails.org/) with tailwind css and esbuild to compile js

## Dependencies

To run this project you need to have:

* Ruby 3.1.1 - You can use [RVM](http://rvm.io)
* [PostgreSQL](http://www.postgresql.org/)
* [Redis](https://redis.io/)

## Setup the project

1. Install the dependencies above
2. `$ git clone git@github.com:ffscalco/rails-fullstack-template.git` - Clone the project
3. `$ cd rails-fullstack-template` - Go into the project folder
4. `$ bin/setup` - To install the gems, copy config files, create the database

If everything goes OK, you can now run the project!

## Running the project

1. `$ bin/dev` - Runs the js and css compilers
2. `$ rails server` - Opens the server
3. Open [http://localhost:3000](http://localhost:3000)

## Running specs and checking coverage

`$ bundle exec rake spec` to run the specs.

`$ coverage=on bundle exec rake spec` to generate the coverage report then open the file `coverage/index.html` on your browser.

## Infrastructure

To be defined

## Deployments

To be defined
