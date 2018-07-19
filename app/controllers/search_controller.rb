class SearchController < ApplicationController
  def index
    search_for = params['companies']['name']
    response = RestClient::Request.execute(
      method: :get,
      url: "#{ENV['COMPANIES_URL']}?q=#{search_for}",
      user: ENV['COMPANIES_API_KEY'],
    )
    render json: JSON.parse(response)
  end
end
