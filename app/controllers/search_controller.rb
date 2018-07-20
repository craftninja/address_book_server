class SearchController < ApplicationController
  def index

    if params['officers_for_company_id']
      company_id = params['officers_for_company_id']
      response = RestClient::Request.execute(
        method: :get,
        url: "#{ENV['COMPANIES_HOUSE_URL']}/company/#{company_id}/officers",
        user: ENV['COMPANIES_HOUSE_API_KEY'],
      )
    else
      search_for = params['companies']['name']
      response = RestClient::Request.execute(
        method: :get,
        url: "#{ENV['COMPANIES_HOUSE_URL']}/search/companies?q=#{search_for}",
        user: ENV['COMPANIES_HOUSE_API_KEY'],
      )
    end

    parsedResponse = JSON.parse(response)
    render json: parsedResponse
  end
end
