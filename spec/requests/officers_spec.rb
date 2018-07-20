require 'rails_helper'

describe 'Officers - ', :type => :request do
  it 'can be listed' do
    get '/officers'
    no_officers = JSON.parse(response.body)
    expect(no_officers).to eq({'officers' => []})

    company = Company.create({
      title: 'Cognizant',
      address_snippet: '123 Main Street',
      company_number: 1234,
    })
    Officer.create({
      name: 'Serena Williams',
      company_id: company.id
    })

    get '/officers'
    all_officers = JSON.parse(response.body)

    expect(all_officers.length).to eq(1)
    expect(all_officers['officers'][0].keys).to eq([
      'id',
      'name',
      'company_id',
      'created_at',
      'updated_at',
    ])
  end
end
