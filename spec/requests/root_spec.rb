require 'rails_helper'

describe 'Root of API - ', :type => :request do
  it 'returns a greeting' do
    get '/'
    expect(response.body).to eq('oh hai!')
  end
end
