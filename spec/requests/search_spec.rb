require 'rails_helper'

describe 'Search - ', :type => :request do
  it 'Cognizant search returns list of Cognizant companies' do
    search_for = 'cognizant'
    get "/search?companies[name]=#{search_for}"

    first_company_listed = JSON.parse(response.body)['items'][0]
    includes_cognizant = first_company_listed['title'].include? 'COGNIZANT'

    expect(includes_cognizant).to eq(true)
  end

  it 'Cognizant officer search returns list of Cognizant companies' do
    search_for = 'cognizant'
    get "/search?companies[name]=#{search_for}"

    first_company_id = JSON.parse(response.body)['items'][0]['company_number']
    get "/search?officers_for_company_id=#{first_company_id}"

    officers = JSON.parse(response.body)
    expect(officers['active_count'].present?).to eq(true)
  end
end
