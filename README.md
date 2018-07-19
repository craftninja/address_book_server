# README

### How this was made:

1. Basic app
    * `$ rails new address_book_server --database=postgresql --api`
    * `$ rake db:create`
    * `$ rails s` and check out the new amazing app
1. Add `rspec-rails`
    * Add the current version to Gemfile in test and dev
    * `$ rails generate rspec:install`
    * add the following test in `spec/models/basic_spec.rb` to ensure testing is setup correctly:

        ```rb
        describe 'Basic - ' do
          it 'rspec is setup' do
            expect(true).to eq false
          end
        end
        ```

        Change false to true once you have a "good red" indicating that the test framework is setup.

    * Add the following test in `spec/requests/root_spec.rb` to create a simple request test

        ```rb
        require 'rails_helper'

        describe 'Root of API - ', :type => :request do
          it 'returns a greeting' do
            get '/'
            expect(response.body).to eq('oh hai!')
          end
        end
        ```

        Follow the failing tests to implement the proper code. Run rake db:migrate to create a schema even though we don't have a migration yet, Rails will want a basic schema.
1. Change port so client can have 3000
    * Search for the port 3000 and change it to 3000. Restart server and make sure server and client are still happy
