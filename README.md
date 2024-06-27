# Rails fullstack template

This project is a [Rails](http://rubyonrails.org/) with tailwind css and esbuild to compile js

## Dependencies

To run this project you need to have:

* Ruby 3.3.3 - You can use [RVM](http://rvm.io)
* Node 20.11.1 - You can use [NVM](https://github.com/nvm-sh/nvm)
* [PostgreSQL](http://www.postgresql.org/)
* [Redis](https://redis.io/)

## Setup the project

As this is a template, please search for `project_name` and `ProjectName` and replace for the name of your project before following the steps below.

1. Install the dependencies above
2. `$ git clone git@github.com:project_name.git` - Clone the project
3. `$ cd project_name` - Go into the project folder
4. `$ bin/setup` - To install the gems, copy config files, create the database

If everything goes OK, you can now run the project!

## Running the project

1. `$ bin/dev` - Runs the the rails server and compiles js and css
1.1 Or `$ bin/assets` To compile only the js and css and run `$ rails server` in another terminal to run rails server outside foreman
3. Open [http://localhost:3000](http://localhost:3000)

## Running specs and checking coverage

* `$ bundle exec rspec` to run all the specs.
* `$ bundle exec rspec --tag ~@js` to run unit tests.
* `$ bundle exec rspec --tag @js` to run view tests.
* `$ NO_HEADLESS_BROWSER=on bundle exec rspec` to run specs viewing the browser
* `$ COVERAGE=on bundle exec rspec` to generate the coverage report then open the file `coverage/index.html` on your browser.

## Infrastructure

To be defined

## Deployments

To be defined
