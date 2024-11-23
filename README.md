# Rails fullstack template

This project is a [Rails](http://rubyonrails.org/) with tailwind css and esbuild to compile js

![CI Workflow](https://github.com/ffscalco/rails-fullstack-template/actions/workflows/ci.yml/badge.svg)

## Dependencies

To run this project you need to have:

* [asdf](https://asdf-vm.com/)
* Ruby 3.3.6
* Node 22.11.0
* Yarn 1.22.22
* [PostgreSQL](http://www.postgresql.org/)
* [Redis](https://redis.io/)

You can use [asdf](https://asdf-vm.com/) to install ruby, node, and yarn versions.
Once you have it installed on your local, you can do the following:

```bash
asdf plugin add ruby
asdf plugin add nodejs
asdf plugin add yarn

asdf install ruby 3.3.6
asdf install nodejs 22.11.0
asdf install yarn 1.22.22
```

Your local env will be loaded automatically using the versions in the `.tool-versions` file

## Setup the project

As this is a template, please search for `project_name` and `ProjectName` and replace for the name of your project before following the steps below.

1. Install the dependencies above
2. `$ git clone git@github.com:project_name.git` - Clone the project
3. `$ cd project_name` - Go into the project folder
4. `$ bin/setup` - To install the gems, copy config files, create the database

If everything goes OK, you can now run the project!

## Running the project

You can:

- `$ bin/assets` To compile only the js and css
- `$ rails server` in another terminal to run rails server
- Open [http://localhost:3000](http://localhost:3000)

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
