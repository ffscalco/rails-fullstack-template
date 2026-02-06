# Rails fullstack template

This project is a [Rails](http://rubyonrails.org/) with tailwind css and esbuild to compile js

![CI Workflow](https://github.com/ffscalco/rails-fullstack-template/actions/workflows/ci.yml/badge.svg)

## Dependencies

To run this project you need to have:

* [asdf](https://asdf-vm.com/)
* Ruby 4.0.1
* Node 24.10.0
* Yarn 4.10.3
* [PostgreSQL](http://www.postgresql.org/)
* [Redis](https://redis.io/)

You can use [asdf](https://asdf-vm.com/) to install ruby, node, and yarn versions.
Once you have it installed on your local, you can do the following:

```bash
asdf plugin add ruby
asdf plugin add nodejs

asdf install ruby 4.0.1
asdf install nodejs 24.10.0
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

## Running tests and checking coverage

* `$ bin/rails test` to run unit/integration tests.
* `$ bin/rails test:system` to run system (browser) tests.
* `$ bin/rails test:all` to run all tests.
* `$ NO_HEADLESS_BROWSER=on bin/rails test:system` to run system tests viewing the browser.
* `$ COVERAGE=on bin/rails test:all` to generate the coverage report then open the file `coverage/index.html` on your browser.

## Infrastructure

To be defined

## Deployments

To be defined
