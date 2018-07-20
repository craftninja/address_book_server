require 'rails_helper'

describe 'Companies - ', :type => :request do
  it 'can be created' do

    params = {
      :company => {
        :title => 'Cognizant',
        :address_snippet => 'address_snippet',
        :company_number => 1234,
      },
      :officers => {
        :items => [
          :name => 'Serena Williams',
        ],
      },
    }
    post '/companies', :params => params

    created_company = JSON.parse(response.body)
    expect(created_company['company'].keys).to eq([
      "id",
      "title",
      "address_snippet",
      "company_number",
      "created_at",
      "updated_at",
    ])
    expect(created_company['officers'].length).to be(1)
    expect(created_company['officers'][0].keys).to eq([
      "id",
      "name",
      "company_id",
      "created_at",
      "updated_at",
    ])

    new_company = Company.all.first
    new_officer = Officer.all.first

    expect(new_company.title).to eq('Cognizant')
    expect(new_officer.name).to eq('Serena Williams')
  end
end
