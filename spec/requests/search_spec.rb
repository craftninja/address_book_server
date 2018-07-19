require 'rails_helper'

describe 'Search - ', :type => :request do
  it 'Cognizant search returns list of Cognizant companies' do
    search_for = 'cognizant'
    get "/search?companies[name]=#{search_for}"

    firstCompanyListed = JSON.parse(response.body)['items'][0]
    includesCognizant = firstCompanyListed['title'].include? 'COGNIZANT'

    expect(includesCognizant).to eq(true)
  end
end
