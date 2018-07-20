# README

### Get this running

1. Fork, clone, and bundle
1. Copy `.env.example` to `.env` and update with appropriate variables
1. `$ rake db:migrate` to run the database migrations
1. `$ rail s` to start the server
1. `$ rspec` to run the tests
    * If you don't want the tests to call the external API, place an `x` in front of the describe block in `/spec/requests/search_spec`
