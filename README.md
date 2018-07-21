# README

### Chekkitout

[addressbook-server.herokuapp.com](https://addressbook-server.herokuapp.com/)

* get a greeting at [index](https://addressbook-server.herokuapp.com/)
* list of saved companies at [/companies](https://addressbook-server.herokuapp.com/companies)
* list of saved officers at [/officers](https://addressbook-server.herokuapp.com/officers)
* post to companies creates new companies and associated officers (see [companies spec](./spec/requests/companies_spec.rb))

### Associated links

* [client repo](https://github.com/craftninja/address-book-client)
* [client live app](https://addressbook-client.herokuapp.com/)

### Get this running

1. Fork, clone, and bundle
1. Copy `.env.example` to `.env` and update with appropriate variables
1. `$ rake db:migrate` to run the database migrations
1. `$ rail s` to start the server
1. `$ rspec` to run the tests
    * If you don't want the tests to call the external API, place an `x` in front of the describe block in `/spec/requests/search_spec`
