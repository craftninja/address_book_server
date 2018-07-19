class SearchController < ApplicationController
  def index
    search_for = params['companies']['name']
    response = RestClient::Request.execute(
      method: :get,
      url: "#{ENV['COMPANIES_URL']}?q=#{search_for}",
      user: ENV['COMPANIES_API_KEY'],
    )

    companies = JSON.parse(response)
    render json: companies
  end
end
