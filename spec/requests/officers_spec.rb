require 'rails_helper'

describe 'Officers - ', :type => :request do
  it 'can be listed' do
    get '/officers'
    no_officers = JSON.parse(response.body)
    expect(no_officers).to eq({'officers' => []})

    create_officer

    get '/officers'
    all_officers = JSON.parse(response.body)

    expect(all_officers.length).to eq(1)
    expect(all_officers['officers'][0].keys).to eq([
      'id',
      'name',
      'company',
    ])
    expect(all_officers['officers'][0]['company'].keys).to eq([
      'id',
      'address_snippet',
      'company_number',
      'title',
    ])
  end
end
