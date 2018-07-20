class CompaniesController < ApplicationController
  def index
    companies = Company.all
    render json: {companies: companies}
  end

  def new
    company = Company.create(company_params)
    officers = officers_params.map do |officer|
      Officer.create(officer.merge(company_id: company.id))
    end
    render json: {company: company, officers: officers}


  end

  private

  def company_params
    params.require(:company).permit(:title, :address_snippet, :company_number)
  end

  def officers_params
    params.require(:officers).permit(items: [ :name ])[:items]
  end

end
